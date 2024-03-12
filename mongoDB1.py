from flask import Flask, request, jsonify
import pymongo

app = Flask(__name__)


myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["db1"]
mycol = mydb["pSignUp"]

@app.route('/api', methods=['GET'])
def return_ascii():
    d = {}
    input_str1 = str(request.args['q1'])
    input_str2 = str(request.args['q2'])
    input_str3 = str(request.args['q3'])
    input_str4 = str(request.args['q4'])
    input_str5 = str(request.args['q5'])
    input_str6 = str(request.args['q6'])
    input_str7 = str(request.args['q7'])
    input_str8 = str(request.args['q8'])

    d['str1'] = input_str1
    d['str2'] = input_str2
    d['str3'] = input_str3
    d['str4'] = input_str4
    d['str5'] = input_str5
    d['str6'] = input_str6
    d['str7'] = input_str7
    d['str8'] = input_str8

    print(d['str1'])
    print(d['str2'])
    print(d['str3'])
    print(d['str4'])
    print(d['str5'])
    print(d['str6'])
    print(d['str7'])
    print(d['str8'])

    # mycol.insert_one({"userName": input_str1, "password": input_str2, "cPassword": input_str3})
    mycol.insert_one(d)
    return d


if __name__ == "__main__":
    app.run()
##############################################3


# mylist = [
#   { "_id": 1, "name": "John", "address": "Highway 37"},
#   { "_id": 2, "name": "Peter", "address": "Lowstreet 27"},
#   { "_id": 3, "name": "Amy", "address": "Apple st 652"},
#   { "_id": 4, "name": "Hannah", "address": "Mountain 21"},
#   { "_id": 5, "name": "Michael", "address": "Valley 345"},
#   { "_id": 6, "name": "Sandy", "address": "Ocean blvd 2"},
#   { "_id": 7, "name": "Betty", "address": "Green Grass 1"},
#   { "_id": 8, "name": "Richard", "address": "Sky st 331"},
#   { "_id": 9, "name": "Susan", "address": "One way 98"},
#   { "_id": 10, "name": "Vicky", "address": "Yellow Garden 2"},
#   { "_id": 11, "name": "Ben", "address": "Park Lane 38"},
#   { "_id": 12, "name": "William", "address": "Central st 954"},
#   { "_id": 13, "name": "Chuck", "address": "Main Road 989"},
#   { "_id": 14, "name": "Viola", "address": "Sideway 1633"}
# ]


#print list of the _id values of the inserted documents:
