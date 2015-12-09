function get_results (result) {
    print(tojson(result));
}

db.digitSum.find().forEach(get_results)