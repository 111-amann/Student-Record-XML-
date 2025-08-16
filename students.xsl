<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Student Records</title>
       <style>
  /* Import Google Fonts */
  @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap');

  body {
    font-family: 'Roboto', sans-serif;
    background: #f4f7fa;
    margin: 40px;
    color: #333;
  }
  h2,h3 {
    text-align: center;
    color: #2c3e50;
    margin-bottom: 30px;
    letter-spacing: 1.2px;
  }
  table {
    margin: 0 auto;
    border-collapse: separate;
    border-spacing: 0;
    width: 80%;
    max-width: 900px;
    background: white;
    border-radius: 10px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
    overflow: hidden;
  }
  th, td {
    padding: 15px 20px;
    text-align: left;
  }
  th {
    background: #2c3e50;  /* simple solid color */
    color: white;
    font-weight: 700;
    font-size: 1rem;
    letter-spacing: 0.05em;
    user-select: none;
  }
  tbody tr {
    border-bottom: 1px solid #e1e8f0;
    transition: background-color 0.3s ease;
  }
  tbody tr:hover {
    background-color: #f0f4ff;
    cursor: default;
  }
  tbody tr:last-child {
    border-bottom: none;
  }
  td {
    font-size: 0.95rem;
  }
  /* Responsive */
  @media (max-width: 600px) {
    table, tbody, tr, th, td {
      display: block;
      width: 100%;
    }
    tr {
      margin-bottom: 15px;
    }
    th {
      text-align: right;
      padding-right: 15px;
      font-size: 0.9rem;
      border-bottom: none;
      background: none;
      color: #555;
    }
    td {
      text-align: left;
      padding-left: 50%;
      position: relative;
      font-size: 0.9rem;
      border-bottom: 1px solid #ddd;
    }
    td::before {
      content: attr(data-label);
      position: absolute;
      left: 15px;
      font-weight: 700;
      color: #555;
      white-space: nowrap;
    }
  }
</style>

      </head>
      <body>
        <h2>Student Records</h2>
        <h3>Aman Sayyad | 1011</h3>
        <table>
          <thead>
            <tr>
              <th>ID</th>
              <th>Name</th>
              <th>Age</th>
              <th>Major</th>
              <th>Email</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="students/student">
              <tr>
                <td data-label="ID"><xsl:value-of select="@id"/></td>
                <td data-label="Name"><xsl:value-of select="name"/></td>
                <td data-label="Age"><xsl:value-of select="age"/></td>
                <td data-label="Major"><xsl:value-of select="major"/></td>
                <td data-label="Email"><xsl:value-of select="email"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
