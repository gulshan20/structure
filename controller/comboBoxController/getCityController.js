module.exports=(req, res) => {
    const state = req.params.state;
    let cities = [];
    switch (state) {
        case 'AP':
            cities = ['Visakhapatnam', 'Vijayawada', 'Guntur', 'Hyderabad'];
            break;
        case 'KA':
            cities = ['Bangalore', 'Mysore', 'Hubli'];
            break;
        case 'MH':
            cities = ['Mumbai', 'Pune', 'Nagpur'];
            break;
        case 'GJ':
            cities = ['Surat', 'Ahmedabad', 'valsad', 'vapi', 'vadodara', 'mehsana'];
            break;
        case 'UP':
            cities = ['Kanpur', 'Faridabad', 'Ayodhaya', 'Baliya', 'Varanasi', 'Noida'];
            break;
        default:
            cities = [];
    }
    res.json(cities);
}