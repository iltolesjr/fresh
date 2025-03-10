


Database Design: EA SPORTS FC 25 Players

Entities

Players: Stores information about individual players.
Teams: Stores information about the teams in the game.
Leagues: Stores information about the leagues in the game.
Nationalities: Stores information about the countries that the players represent.
MarketPrices: Stores information about the players market prices.
Attributes

Players

PlayerID (Primary Key)
FirstName
LastName
NationalityID (Foreign Key)
TeamID (Foreign Key)
LeagueID (Foreign Key)
Position
OverallRating
Potential
Pace
Shooting
Passing
Dribbling
Defending
Physicality
PreferredFoot
WeakFoot
SkillMoves
Traits
MarketPriceID (Foreign Key)
Teams

TeamID (Primary Key)
TeamName
LeagueID (Foreign Key)
Stadium
Kit
Leagues

LeagueID (Primary Key)
LeagueName
Country
Nationalities

NationalityID (Primary Key)
NationalityName
MarketPrices

MarketPriceID (Primary Key)
Price
Currency
Date
Relationships

Players belong to Teams.
Teams belong to Leagues.
Players have Nationalities.
Players have MarketPrices.
ERD Representation (Conceptual)

+-------------+          +----------+          +---------+             +---------------+
| Players     |--------->| Teams    |--------->| Leagues |<------------>| Nationalities |
+-------------+          +----------+          +---------+             +---------------+
| PlayerID    |          | TeamID   |          |LeagueID |             |NationalityID  |
| FirstName   |          | TeamName |          |LeagueName|             |NationalityName|
| LastName    |          | LeagueID |          |Country   |             +---------------+
| NationalityID|          | Stadium  |          +---------+
| TeamID      |          | Kit      |
| LeagueID    |          +----------+
| ...         |
| MarketPriceID|
+-------------+
      |
      | 1:1
      v
+---------------+
| MarketPrices  |
+---------------+
| MarketPriceID |
| Price         |
| Currency      |
| Date          |
+---------------+
Key Details

Primary Keys: PlayerID, TeamID, LeagueID, NationalityID
Foreign Keys: NationalityID, TeamID, LeagueID in the Players table. LeagueID in the Teams table. MarketPriceID in the Players table.
Normalization Considerations

This design is in 3NF.
There are no repeating groups or redundant data.
Each table has a primary key, and foreign keys are used to establish relationships between tables.
FUTBIN/FUTNEXT Integration

Market Prices: The MarketPrices entity can be populated with data fetched from FUTBIN or FUTNEXT APIs. This allows you to track real-time or historical player prices.
Player Stats: While the core player attributes are in the Players entity, you can use FUTBIN/FUTNEXT to supplement this data with more detailed in-game stats.
Additional Considerations

Data Updates: EA SPORTS FC 25 player data changes frequently. You'll need a strategy for keeping your database up-to-date (e.g., regular imports from FUTBIN/FUTNEXT).
API Usage: Be mindful of the terms of service if you're using FUTBIN or FUTNEXT APIs.

Sources and related content
Module 9 L...sign and N

TXT




create script for diagrams.io that shows our erd


XML

<mxfile host="app.diagrams.net" modified="2024-05-01T15:23:45.399Z" agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36" etag="qX9L_o_06n6z_kQe952M" version="23.1.7" type="device">
  <diagram name="Page-1" id="e5L6iM70n89Xo6F4K26a">
    <mxGraphModel dx="1434" dy="799" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="850" pageHeight="1100" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="2" value="Players" style="rounded=1;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="40" y="80" width="120" height="60" as="geometry" />
        </mxCell>
        <mxCell id="3" value="Teams" style="rounded=1;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="240" y="80" width="120" height="60" as="geometry" />
        </mxCell>
        <mxCell id="4" value="Leagues" style="rounded=1;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="440" y="80" width="120" height="60" as="geometry" />
        </mxCell>
        <mxCell id="5" value="Nationalities" style="rounded=1;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="640" y="80" width="120" height="60" as="geometry" />
        </mxCell>
        <mxCell id="6" value="MarketPrices" style="rounded=1;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="40" y="240" width="120" height="60" as="geometry" />
        </mxCell>
        <mxCell id="7" value="" style="endArrow=classic;html=1;rounded=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;exitX=1;exitY=0.5;exitDx=0;exitDy=0;" edge="1" parent="1" source="2" target="3">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="160" y="110" as="sourcePoint" />
            <mxPoint x="210" y="60" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="8" value="" style="endArrow=classic;html=1;rounded=0;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" edge="1" parent="1" source="3" target="4">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="360" y="110" as="sourcePoint" />
            <mxPoint x="410" y="60" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="9" value="" style="endArrow=classic;html=1;rounded=0;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" edge="1" parent="1" source="4" target="5">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="560" y="110" as="sourcePoint" />
            <mxPoint x="610" y="60" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="10" value="" style="endArrow=classic;html=1;rounded=0;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="1" source="2" target="6">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="100" y="140" as="sourcePoint" />
            <mxPoint x="150" y="90" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="11" value="PlayerID (PK)&#xa;FirstName&#xa;LastName&#xa;NationalityID (FK)&#xa;TeamID (FK)&#xa;LeagueID (FK)&#xa;Position&#xa;OverallRating&#xa;Potential&#xa;Pace&#xa;Shooting&#xa;Passing&#xa;Dribbling&#xa;Defending&#xa;Physicality&#xa;PreferredFoot&#xa;WeakFoot&#xa;SkillMoves&#xa;Traits&#xa;MarketPriceID(FK)" style="text;html=1;align=left;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" vertex="1" parent="1">
          <mxGeometry x="40" y="80" width="120" height="260" as="geometry" />
        </mxCell>
        <mxCell id="12" value="TeamID (PK)&#xa;TeamName&#xa;LeagueID (FK)&#xa;Stadium&#xa;Kit" style="text;html=1;align=left;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" vertex="1" parent="1">
          <mxGeometry x="240" y="80" width="100" height="80" as="geometry" />
        </mxCell>
        <mxCell id="13" value="LeagueID (PK)&#xa;LeagueName&#xa;Country" style="text;html=1;align=left;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" vertex="1" parent="1">
          <mxGeometry x="440" y="80" width="110" height="60" as="geometry" />
        </mxCell>
        <mxCell id="14" value="NationalityID (PK)&#xa;NationalityName" style="text;html=1;align=left;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" vertex="1" parent="1">
          <mxGeometry x="640" y="80" width="120" height="40" as="geometry" />
        </mxCell>
        <mxCell id="15" value="MarketPriceID (PK)&#xa;Price&#xa;Currency&#xa;Date" style="text;html=1;align=left;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" vertex="1" parent="1">
          <mxGeometry x="40" y="240" width="120" height="60" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>





