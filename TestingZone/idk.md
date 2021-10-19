<script type="text/javascript" >
function loadDB()
{
var connection = new ActiveXObject("ADODB.Connection");
var connectionstring = "Data Source=.;Initial Catalog=EmpDetail;Persist Security Info=True;User ID=sa;Password=Micr0s0ft;Provider=SQLOLEDB";
connection.Open(connectionstring);
var rs = new ActiveXObject("ADODB.Recordset");
rs.Open("select * from emp", connection);
rs.MoveFirst();
var span = document.createElement("span");
span.style.color = "Blue";
span.innerText = " ID "+" Name "+" Salary";
document.body.appendChild(span);
while (!rs.eof)
{
var span = document.createElement("span");
span.style.color = "green";
span.innerText = "\n " + rs.fields(0) +" | "+ rs.fields(1) +" | "+ rs.fields(2);
document.body.appendChild(span);
rs.MoveNext();
}
rs.close();
connection.close();
}
</script>
