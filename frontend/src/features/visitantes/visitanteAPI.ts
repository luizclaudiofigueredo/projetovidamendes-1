import { VisitanteFormData, VisitanteUpdateData, VisitanteState, VisitanteDeleteData } from './visitanteSlice';

const API_URL = "http://localhost:3005";

export async function fetchVisitantes() {
    return fetch(`${API_URL}/visitantes.json`, {
        method: "GET",
        headers: {
            "Content-Type" : "application/json",
        },
    }).then((response) => response.json())
    .catch((error) => {
        console.log("Error: ", error);
        return {} as VisitanteState;
    })
}

export async function createVisitante(payload: VisitanteFormData) {
    const visitante = payload.visitante;
    return fetch(`${API_URL}/visitantes.json`, {
        method: "POST",
        headers: {
            "Content-Type" : "application/json",
        },
        body: JSON.stringify({
            visitante
        })
    }).then((response) => response.json())
    .catch((error) => {
        console.log("Error: ", error);
        return {} as VisitanteState;
    })
}

export async function updateVisitante(payload: VisitanteFormData) {
    const visitante = payload.visitante;
    return fetch(`${API_URL}/visitantes/${visitante.id}.json`, {
        method: "PUT",
        headers: {
            "Content-Type" : "application/json",
        },
        body: JSON.stringify({
            visitante
        })
    }).then((response) => response.json())
    .catch((error) => {
        console.log("Error: ", error);
        return {} as VisitanteState;
    })
}

export async function destroyVisitante(payload: VisitanteDeleteData) {
    const visitante = payload.visitante;
    return fetch(`${API_URL}/visitantes/${visitante.visitante_id}.json`, {
        method: "DELETE",
        headers: {
            "Content-Type" : "application/json",
        },
        body: JSON.stringify({
            visitante
        })
    }).then((response) => response.json())
    .catch((error) => {
        console.log("Error: ", error);
        return {} as VisitanteState;
    })
}