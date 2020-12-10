const db = require('../../data/db-config');

module.exports = {

    find() {
        return db('schemes');
    },
    findById(id) {
        return db('schemes').where({ id }).first();
    },
    findSteps(id) {
        return db('schemes as sc')
            .join('steps as s', 's.scheme_id', 'sc.id')
            .select('s.id', 's.step_number', 'sc.scheme_name', 's.instructions')
            .where('s.scheme_id', id)
            .orderBy('s.step_number');
    },
    add(scheme){
        return db('schemes')
        .insert(scheme)
        .then(ids => {
            return this.findById(ids[0]);
        })
    }
}
