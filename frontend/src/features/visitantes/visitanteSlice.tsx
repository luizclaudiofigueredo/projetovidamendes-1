import { createAsyncThunk, createSlice } from '@reduxjs/toolkit';
import produce from "immer";
import { RootState } from '../../app/store'
import { fetchVisitantes, createVisitante, destroyVisitante, updateVisitante } from './visitanteAPI'

export enum Statuses {
    Initial = "Not Fetched",
    Loading = "Loading...",
    UpToDate = "Atualizado",
    Deleted = "Excluído",
    Error = "Erro"
}

export interface VisitanteState {
    id?: number;
    nome?: string;
    sobrenome?: string;
    telefone?: string;
    grupo?: number;
    observacoes?: string;
    created_at?: any;
    updated_at?: any;    
}

export interface VisitantesState {
    visitantes: VisitanteState[];
    status: string;
}

const initialState: VisitantesState = {
    visitantes: [
        {
            id: 0,
            nome: "",
            sobrenome: "",
            telefone: "",
            grupo: 0,
            observacoes: "",
            created_at: "",
            updated_at: "",
        }
    ],
    status: Statuses.Initial    
}

export interface VisitanteFormData {
    visitante: {
        id?: number;
        nome?: string;
        sobrenome?: string;
        telefone?: string;
        grupo?: number;
        observacoes?: string;   
    }
}

export interface VisitanteUpdateData {
    visitante_id?: number;
    visitante: VisitanteState;
}

export interface VisitanteDeleteData {
    visitante: {
        visitante_id?: number;
    }
}

export const fetchVisitantesAsync = createAsyncThunk(
    'visitantes/fetchVisitantes',
    async () => {
        const response = await fetchVisitantes();
        return response;
    }
)

export const createVisitanteAsync = createAsyncThunk(
    'visitantes/createVisitante',
    async (payload: VisitanteFormData) => {
        const response = await createVisitante(payload);
        return response;
    }
)

export const updateVisitanteAsync = createAsyncThunk(
    'visitantes/updateVisitante',
    async (payload: VisitanteFormData) => {
        const response = await updateVisitante(payload);
        return response;
    }
)

export const destroyVisitanteAsync = createAsyncThunk(
    'visitantes/destroyVisitante',
    async (payload: VisitanteDeleteData) => {
        const response = await destroyVisitante(payload);
        return response;
    }
)

export const visitanteSlice = createSlice({
    name: "visitantes",
    initialState,
    reducers: {},
    extraReducers: (builder) => {
        builder
            .addCase(fetchVisitantesAsync.pending, (state) => {
                return produce(state, (draftState) => {
                    draftState.status = Statuses.Loading;
                })
            })
            .addCase(fetchVisitantesAsync.fulfilled, (state, action) => {
                return produce(state, (draftState) => {
                    draftState.visitantes = action.payload;
                    draftState.status = Statuses.UpToDate;
                })
            })
            .addCase(fetchVisitantesAsync.rejected, (state) => {
                return produce(state, (draftState) => {
                    draftState.status = Statuses.Error;
                })
            })
            /** Create Section */
            .addCase(createVisitanteAsync.pending, (state) => {
                return produce(state, (draftState) => {
                    draftState.status = Statuses.Loading;
                })
            })
            .addCase(createVisitanteAsync.fulfilled, (state, action) => {
                return produce(state, (draftState) => {
                    draftState.visitantes.push(action.payload);
                    draftState.status = Statuses.UpToDate;
                })
            })
            .addCase(createVisitanteAsync.rejected, (state) => {
                return produce(state, (draftState) => {
                    draftState.status = Statuses.Error;
                })
            })
            /** Update Section */
            .addCase(updateVisitanteAsync.pending, (state) => {
                return produce(state, (draftState) => {
                    draftState.status = Statuses.Loading;
                })
            })
            .addCase(updateVisitanteAsync.fulfilled, (state, action) => {
                return produce(state, (draftState) => {
                    const index = draftState.visitantes.findIndex(
                        visitante => visitante.id === action.payload.id
                    );
                    draftState.visitantes[index] = action.payload;
                    draftState.status = Statuses.UpToDate;
                })
            })
            .addCase(updateVisitanteAsync.rejected, (state) => {
                return produce(state, (draftState) => {
                    draftState.status = Statuses.Error;
                })
            })             
            /** Destroy Section */
            .addCase(destroyVisitanteAsync.pending, (state) => {
                return produce(state, (draftState) => {
                    draftState.status = Statuses.Loading;
                })
            })
            .addCase(destroyVisitanteAsync.fulfilled, (state, action) => {
                return produce(state, (draftState) => {
                    draftState.visitantes = action.payload;
                    draftState.status = Statuses.UpToDate;
                })
            })
            .addCase(destroyVisitanteAsync.rejected, (state) => {
                return produce(state, (draftState) => {
                    draftState.status = Statuses.Error;
                })
            })                       
    }
})

export const {} = visitanteSlice.actions;

export const selectVisitantes = (state: RootState) => state.visitantes.visitantes;

export const selectStatus = (state: RootState) => state.visitantes.status;

export default visitanteSlice.reducer;