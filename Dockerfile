FROM python

WORKDIR /app
# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt .

ENV DB_URL=terraform-20220516124419681900000001.ccb5th4uvxdi.ap-south-1.rds.amazonaws.com
ENV ACCESS_KEY=AKIAREJO5JBJJQQBNFGH
ENV SECRET_KEY=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
#this runs when image is built
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000 

ENTRYPOINT [ "python" ,"app.py" ] 