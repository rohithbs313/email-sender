from email.message import EmailMessage
from aap2 import password
import ssl
import smtlib
email_sender='code with xyz.com'
email_password=password
email_receiver=''
subject='dont forget to suscribe'
body=" "
em=Email message()
em["From"]=email_sender
em["To"}=email_reciever
em['subject']=subject
em.set_content(body)
content=ssl.create_default_context()
with smtlib.SMTP_SSL('smtp.gmail.com',465,context=context)assmtp:
smtp.login(email_sender,email_password)
smtp.sendmail(email_sender,email_reciever,em.as_string())
