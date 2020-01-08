import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myItems=[
    {
      "name":"Sachin Tendulkar",
      "image_dp":"https://www.kreedon.com/wp-content/uploads/2019/01/sachin1-696x392.jpg",
      "post":"https://www.thestatesman.com/wp-content/uploads/2019/07/Sachin-3.jpg",
  "post_description":"God of Cricket",
      "post_dat":"december",
  "like":"liked by Hello,Bye and 150  other"
    },

    {
      "name":"Virat Kohli",
      "image_dp":"https://www.kreedon.com/wp-content/uploads/2019/01/sachin1-696x392.jpg",
      "post":"https://upload.wikimedia.org/wikipedia/commons/1/15/Virat_Kohli_portrait.jpg",
      "post_description":"God of Cricket",
      "post_dat":"december",
      "like":"liked by Hello,Bye and 150  other"
    },
    {
      "name":"NTR",
      "image_dp":"https://www.kreedon.com/wp-content/uploads/2019/01/sachin1-696x392.jpg",
      "post":"https://i.pinimg.com/originals/0d/e2/9c/0de29cfd26aa09bcc40db0b9225dd89d.jpg",
      "post_description":"God of Cricket",
      "post_dat":"december",
      "like":"liked by Hello,Bye and 150  other"
    },
    {
      "name":"Ms Dhoni",
      "image_dp":"https://www.kreedon.com/wp-content/uploads/2019/01/sachin1-696x392.jpg",
      "post":"https://m.economictimes.com/thumb/msid-61166425,width-1200,height-900,resizemode-4,imgsize-126503/news/sports/why-after-13-years-mahendra-singh-dhoni-is-still-not-out.jpg",
      "post_description":"God of Cricket",
      "post_dat":"december",
      "like":"Liked by Hello,Bye and 150  other"
    },
    {
      "name":"Rohit Sharma",
      "image_dp":"https://www.kreedon.com/wp-content/uploads/2019/01/sachin1-696x392.jpg",
      "post":"https://akm-img-a-in.tosshub.com/indiatoday/images/story/201812/rohit31122018_1_0.jpeg?LuSaCPRUw8yQWqQO59vlgY8WRk6v8Ii3",
      "post_description":"God of Cricket",
      "post_dat":"december",
      "like":"liked by Hello,Bye and 150  other"
    },
    {
      "name":"Aamir Khan",
      "image_dp":"https://www.kreedon.com/wp-content/uploads/2019/01/sachin1-696x392.jpg",
      "post":"https://akm-img-a-in.tosshub.com/indiatoday/images/story/201909/aamir-mogul-770x433.jpeg?8WAAZFCCc5iSlug2rHEvxK8oYJ41VTgW",
      "post_description":"God of Cricket",
      "post_dat":"december",
      "like":"liked by Hello,Bye and 150  other"
    },
    {
      "name":"Deepika Padukone",
      "image_dp":"https://www.kreedon.com/wp-content/uploads/2019/01/sachin1-696x392.jpg",
      "post":"http://edit.pinkvilla.com/files/styles/large/public/76875184_804972073281437_129728592427883533_n.jpg?itok=Ni7TFiz1",
      "post_description":"God of Cricket",
      "post_dat":"december",
      "like":"liked by Hello,Bye and 150  other"
    },
    {
      "name":"Android",
      "image_dp":"https://www.kreedon.com/wp-content/uploads/2019/01/sachin1-696x392.jpg",
      "post":"https://sophosnews.files.wordpress.com/2019/07/shutterstock_1139181830-compressor.jpg?w=780&h=408&crop=1",
      "post_description":"God of Cricket",
      "post_dat":"december",
      "like":"liked by Hello,Bye and 150  other"
    },
    {
      "name":"Nature",
      "image_dp":"https://www.kreedon.com/wp-content/uploads/2019/01/sachin1-696x392.jpg",
      "post":"https://image.winudf.com/v2/image/Y29tLmtvdmFzLktvdmFzQXBwc19zY3JlZW5fMl8xNTIzMDA0NDc2XzA0NA/screen-2.jpg?fakeurl=1&type=.jpg",
      "post_description":"God of Cricket",
      "post_dat":"december",
      "like":"liked by Hello,Bye and 150  other"
    },
    {
      "name":"Cricket_lover",
      "image_dp":"https://www.kreedon.com/wp-content/uploads/2019/01/sachin1-696x392.jpg",
      "post":"https://www.setaswall.com/wp-content/uploads/2018/07/Cricket-Wallpaper-23-1182x888.jpg",
      "post_description":"God of Cricket",
      "post_dat":"december",
      "like":"liked by Hello,Bye and 150  other"
    },
    {
      "name":"CricStar",
      "image_dp":"https://www.kreedon.com/wp-content/uploads/2019/01/sachin1-696x392.jpg",
      "post":"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAPEhUPEBAVEBUQEBUVFRUVEhUVFxAVFRUWFhUVFRUYHSggGBolHRUXITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OGhAQGy0lHyUtLS0tLS8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLf/AABEIAMIBBAMBEQACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAABAgADBAUGBwj/xABCEAABBAADBQUFBAgFBAMAAAABAAIDEQQSIQUTMUFRBiJhcYEHFDJSkUKCobEjQ2JywdHh8AgVM5Kyg6LC8RY0U//EABoBAAMBAQEBAAAAAAAAAAAAAAABAgMEBQb/xAA2EQACAQIEAwYGAgICAwEBAAAAAQIDEQQSITEFQVETYXGBofAiMpGxwdEU4QbxQmIjUqIzFf/aAAwDAQACEQMRAD8A70BfOHeWNCpCLWhWkSO0K0hFjQrSEOAqQhwFVgHAVIQwCoQ4CdhBAVAMAmIICLAGk7AGk7CDSLASkWAlIsBKRYCAIsAC1DQCkKbDAQgBSEhgISsAhCmwxSFLQxCEhiEKWgEIUtDK3BQ0MrcFDRQhCkYrQo56gWgKooRYAtI2sSWAK0IcBUhDgK0gHAVWEOAqSEMAqsIYBMBgE7CGATsAaTsINJ2ANJgGkASkWAlIAlIAlIEQhAAIRYYhCmwCkKbDAQkMLIrTUbibBLDWoSlCw0zHIWbRQhCkYhCloCtwUNDEcFLKKyFFhitCzSV9PMC1rVaEWhi0SZNxwFS9BDgK0A4CtCHAVIQ4CpCGATEMAqAYBOwggJgNSYBpMQaTsAaTsBKQAKSAICEgJSLABFgBSQALUrAavbO28Ngt17zJu/eJmxR91xzSO4A5QaHidEstx3M8hTYZZGa0Vx00ExZnCqUyelgSMYhYssQhS0MQhSMrIUtAVuChooQhSMVgWXP3qDL4grhv+OhLLgt0uRIAEl1GWAK10EOArEMAqQhwFQhgFQDAKhDAJgMAgQaTAICYDUmIlJgSkgJSAJSdgJSQApAwUgBr0QI8r/xCQuOz4ZG3+jxrDY+yDHKL+tfVENwZ2nY/bIx+CgxYq5YhnrlI3uyD/cCokrMaNzSQytzVLQ0VkKBiEKWMQhSxiFqmwwGJLKFypzKUOI7lbAsJb6+RTLQqinfv5klotaK2nQQ4Ctb94hwFcbeQhwFohDgJoQwCtIBw1VYQwanYQQEwGATAICYhqTAiAIgCUgA0mBEASkACkrAGk7CuAtCTQzmvaHsA7Q2fiMK3V7mZ4/GSMh7G+pbl+8ktGB5l/h77RAGbZchokmaEHqABKwX4Brq8HJzXMEz2wtWdhgLUrDK3MUtDuVOChjKyFDGMxipIGy4Rq8pNzGnZr6LKcdSkzEYFwvSWn+jRlgCuK+n3JLAFqvUBwFSEWALRCHAVIQwCtCLGhWhDgKhBTAakwIECGCYBTAiACgCIERAEQAEDGATERAGHLtPDsdkdPE111lMrA6+lE2gDKISaGfPPtP2HJsXakW1MN3I55t600cscwNyxur7LrJrmHOAGicddBM9w2ZtvD4mGPERvGSaMPaSCKB43Y0o6Enok6UtxKpHZmeDeo1B4Hqs2iwEJDKiFmxlTmqGhljGnorSYmy1rlaYjGnOvosZ7lIwWLhau9PM0ZaAqQhwtUhFjVVrK4iwBUhDALRPmIcKkhFjVohDBMBgFQBTEEIAKYBQIiYBQBEARAEQAEAFMDzL269rJcBhGYfDSbuXFvIc4Op7IWjvFtG22SBm6ZufAEfNiYHtv+H/tfO+V2y5nGSMQukhLjZiLC24x+wQSa5ZfFJgetdrez8W0sLLg5dBI3uu5xyDVjx5H6ixzUjPNvYpjZIXYnYWMbUmEkdJG03wzVIGGuFlrwRxEhPBVmcXeImk9GejT4F8JLonFvM0M3q+PQPHiKd4laKUKmklZ+n9fYycZQ1jt7+v3LMLtEOIjkAY9wtlG2TACyY38/FppwrhWqxqUnG9vPqvH3Y0hUT0f+/AyyFgajNYmkFyzgq2EY0jqWMmWjFe+1k2VYrLf6rnaVu7kMYJrfvAsCtWt3CHCteoiwKlbyEMFohDhUkIdqtCHCoBgmIKYBCYBATEFABQBEwIgCIAiAIgCIA8Q/wASOxRWG2g0Oza4d54ty6yR+Rsyed+CYjw1AHsPsD7JxYkyY97pY5MLOwQujeGiywl7XCjYpwBHRxSYHvxUjPnz/ERhd1joMQx2Qz4UtdlsOORxBLiONteB5NVIGcx2D7dbSwuJgiZiXyRPmjYYZXl7C1zg0hub4OPEVqk0gR9H7RwjCcjxcczqNGjHINWvYRq11jiOBFrWnJzg2vmj6rmmY1IJOz2fo+qE2PjHlz8NMblgrvVW+jd8EtciaIIHAg9QsasFZTjs/R9P0XSm7uEt16rkzbtWaNRnFNsDFlWMikY0mptYy1ZaIWaLPKAAFNvfUB2q0IsCtCGC0QFjQrSJHAVAMExDBUAwTEEJgMExBTAKYEQAUCIgCIAiAAgZEAfJ3tcxEUm1sW6J5kaJA2zwD2saJGtN8A8OTEcegD2H2I+0HD4Jjtn4xzYY3PMkUpFAOI77ZCOtCifK+CTA6ftf7bcLhXmHAxDGuA1kz5Imno3S3+lDxRYDxDtP2mxe05TPipS8i8rRoyFpPwxt+yOA6mhZJTA1MMrmOD2Etc1wc0g0WkGwQeRtAH1wNoDE4fCytN+8tikHk5oN/Vy1wkbOcnskzHEP5Y82zG2jJl2phcvGTDzMf4tHfbf3mlTTV8NO/JoVR2xELc0zpAVyXOsV7lLYWKHm1m2UilyzZQyl9wBAQreQggKsoFgaqSQghUkIsatEIdMQwTQDBUAhlp7WV8THOvplLBVff/BWlpclvWxcEAMmAUwIgAoERMCIAiAIgZEhHJ9u9tOw2ExUzDXusBOn2pX92MH9kEgnyXlVJPFYmVBO0IJZraNt7K/TqdKXZ01Pm9u7vPlLH7QmxDs80r5XHm9xd9L4DwXpU6UKccsEku4wlJyd2zGWhJEAdZ2R7BYnacMmKjlghhgeWyvmkLd2A0PLiAD3aPHwKVwD2j2ng8PCdnbNqZjww4jFviqTEvac2SMO1iiaQNBqSNSRxAOg7KeyOXFYePG4rEtw0UoD2sa3eSvYeHMNaXDUcasWOSqEZTlliiZSUFdnt+xMC1jWvoRxQRNZE0nSONjaBJPQDj5lb4iSpw7GG/MxpRc5drLyNT2becdjptoUd1E3cw39rqfoSf8AqDolXXY0Y0ub1fv3sRQfa1pVeS0Xv3udeV57O8reoYypyljK3KGUAFZAOFcRFrFpHYQwVIQUwGCpCGCYCQS950ZOraPm115T9Q4fd8Vo1pchPWxkBAzFxs2R8OnxylhPyh0b3C/NzWj1WkFdMiTs0ZMeIY5zowbdHlzCjpmBLded0UrNK47puxcgYUwCgRWHOzEZaaACHWO8TdiuVUNfFMOZYEAYMeMMz3Ni0aw06TjbubWDn5n6FcccQ603GlstG+/ov36M6JUlTinPd7Lu6v8ARnNFc7XWlY5wpgK1wPDVJNPYbOU2jsr3/C4/DA0cQ17Gk8A7vFhPgHUvE4RrVxEus/2dmLVo013HyXLGWEtcC0tJBB0II0IK9w4hUARAF7cVLkMAkfu3PDjGHHI54FBxZwLq0tAHYdlPZti8aQ6VrsPGeFtuR/7sfEeZ/FdEMPJrNLRGE66WkdWfQ2ydhNhjjY/RkEbWRx3YYxooZjz4a9eZKJ4iMFko/XmwjRcnmq/Q0m1toybVkOBwRqFpG/n+yR8reo/5fu2TVOmsOu0qb8l79rxMalR4h9nT+Xm/ft+B1uzsDHh42wxDK1godTzJJ5kmyT4rgqTc5OUtzupwjCKjHYucs2WVFQxiOUsZU5QykK1ZgWBUhFjFohFmisQU0IYBVYBgExBDRd1rVXzroncBwqApxWEEhYS5w3bw+hVPLby5tLIB10I4K4ytczlG9ixsb94XbzuZABHlGjrJL8/HhQrwTurbajs73voYmKmxXvEQiYx0BDxM4mnsIBy5RY0uuR58FcVDI778jOTnnVtuZs1BqFAgZhxsacfBF0M1+2ccI4HyNOuWmkdXaAjrxv0XFjsSqWHnKL1tp56HThKPaVowfn5CdnWZcPG0Di3MT0zHN6miFy8NqWoxpU1dpXk+Svrbveu3JbtaXrHSzV5N9bfTQvxm1YojksveeDGDM7+nquuvjqVGSg9ZdFq/68zOlhp1Fm2XV6IDWTS/H+hZ8rTb3eBdwb6a+KWWvX+f4I9E/ifi+Xlr3g3Tp/L8T68vpz8/oZcjmxtJ4Bjb8gAuqco0qbeyS9EYpOUrc2arsxZjc4/akP5D+a8XgF3QnN85P7I7eIaVFFckfLHtHwwi2pjWDh73I7/e4v8A/Je8cBrtlbBxeL/+vh3yD5g2m+rzTR9VcKc5/KiJTjHdnX4P2aGJu+2ji48LGOIDgSfDM6mg+WZdKwltZuxg8TfSCuendguyGz5YGYrA5KssbM+IvkfkeQ865cpOuorlok69Kl/+au+r9/ofZVKnzuy6HdYvE4XAR55HCMeOr5D0A4uPkue9WvK2/wBjVunQjd6HLGTF7aNNDsJg71P25x08f+I/a4LotTw2+s/t7+vgcl6mK0+WHq/f08Tr9m7Piw0YhhYGNb9SebnHmfFcE6kpyzSO+nTjCOWJklQyytxUMYhUsZW5SMrcoZSFasl/sC1gVxS8hMsC1RIxVAEKkIcKgGCYg5hYF6m6HWuKdgGCYivFi43j9h35Glcd0TLZhxLTJGQ17oy9ujmgFzbF20EEXXgnHR6hLVaM0GwMPjIpp45JnYhkc7S0ulZ3mygFweKLmFjacGjKHE8gdOirKm4xaVtPt+zlpKpGUk3dX69f0b+bGxRXvJmN1unPaK04Af3xXHOtTh80kvM74Uak/li34I5DbXaXPMGMcTAwjNlOUy9denQcDXNeDiuKJ10lrBb20v8A13cz3MPwtqg29Jva+tv77+RtMNjPeXhzmmKFtbthFZv23Dh5chxXBjuKOpiKdG+SDtd93Xu7ny3OSdDsItJ5p83+F+foWbfYJTHCNG2HvPUnusaDzJJP4Lo4vUpxVPC4ezcn1v3Jt8+t2RgpdmpVXvsvu35Gxx5dDEI4RTj3Wnkwc3en8l3YytT4VglCD12XVvm/yctFKpUzVNt339xh7J2XktzTZPxPJ1cef4r5vh+Bx2NvUjPJB8+b/L79UjoxOJzaNaLZcjMleI+M7R4E/wALXtrgvEKMXOjiXp/7J29W0vocfbU27Nfs1u0doGeMxxuaTfe1ouA5AFeTi+NYidN4eqle9nKOz9+0d+HoKlNTmnb3uVYTaUkMYjbGARfxWS4k8miv7C+z4Vh6UKFOlGWZ2vJr5Vzd5bX5Jb91k2eRi8VKdWUkrdL7vyPNe1209k4DFSS4nDCTFyESPbuszrcBTu/3Waa6a+C9nNh6e2vqcuWtPfQ47bHtTxUncw0bMM3gCf0j68LGUfQ+aynjJPSOhpHCxXzanF4jE4jFyXI+Sd54WS8+nQfgua8pvqzf4YLoj2X2a7bxuDwQ2fFh95M6Z72a5sjHBvFo0u8xsmhYtdMcIks1V2Rxzxjby0ldncbJ7HOkf7ztKQ4iU/qybY3wdyP7opvmoqYtJZKSsvfvqVTwjbz1nd9Pf+jsAANAKAFADkuG53ktSArkmMrKlgIVLGIVIytwUMpCt/vwWKAuat0SWBCYiFWgGCpCHCoCBnezWfhqr043ddVV9LCtqMYwSCQCWmwflNEWPQkeqpMTRj7Unljic+CH3h4qo84ZmsgHvHQULPorpxi5Wk7LqRUlKMbxV30Di8TJG6IMgdKJZA15DgBA2viIPEeA/lbhFNO7tb1FKTTVle/oU7UwLcRh34Uuc22hmewHAANJeOo1F+ZCuE8s1ImpDNBwOG2k2XASujZjJZHbvd0TQjh7pjBrjJQ+LTQ9SvM4xxPLBUqas3q3z8ulz1uB8Jzzdaq24rRLk/Hrb1MrsnhcLIXyYl1lpFMcDRvXMT9ry+vELyMBRoZXXxEla9rN+fmetxTE1qclRop6q90vK3cdNJj8K0DJE2x8rAB5ZiAa9F2viVB6Yak6j/6x/q/oeLKlWSvVnlXfI1eM2s3MXOOrjwGp8AAvluIYTFyqutiI5XLk2r/TeyXcd2FpxqRtSd0ufL67FeDxcjpBIWhrWfC116mqzELXhtXC4JutU+KS+WK69W9kl5vu0HiqUlHs6drvd9F0XiZ+Nxz3Nc7i7Ka8PILzcTiamMr9pWf6S6IijQjFqPI0GGdK6w0uomzqct8yeVr0cPj6+F0ozavyX4R34mhh5r/yRTNnhtjTS8GEDm+S2j7rOP1/Bd6w3E8c71pO3/Z6fT9LzOFVcNh/kSXdFL1Zu8H2ciZq8mQ/QfQa/ivf4fwylg3nWs+r5eC5eO552Lxc8Qsr0j06+JtYcOyMUxob5Cl6cpyl8zuckYRjsj5r9tPZ7EN2tJIKl97ayRjWElzGNY2P9ID8ItjgDwNJwhKbtFCnOMFeTNBs7sifixD8o45Wn83cB6fVdtPBc5s4amOW0EZGI23hcIDHhmNe7qPh9XcXf3qqlXp0lamiY4erVd6j9/gzuwftI/y2Z802HOJdNTC8SZTDFdubGyqu6Op1ygWOK4KlSVR3kzvp0401aKPpPZ+NjxEUeIidmjmja9hoi2uAINHUHXgsGalyQwFIBSUhiFSwFUjAUAVPWcikJGFhAbLQtkSPaduYiAqkAwVoQJZ2My5nBud4Y2yBmceDRfEnorim9hOSW5kBqdgKsRiWxNL5HU0Gi6jTda7x5DkSdPJXGLbsiXJJXYIqcc93Y7gbK4h7RqDlsC+9rx5anRN6aCWupyHa72g4fBgxtyyzAuAYx+bJ8bQXvbQYaymgSdaoaFTOpGm7Pc7sJw+riviWkev6PPtp+0zaE9huSFpFZWtLrHRxeTa51jJx2S+h7sOA4e3xtvzt9jU//J8S55fKRKXG3EiifULy8Rh41pOct2ezRw0aVNU4aJbHT7M7RsnAjjaYn/LxJ/dP2vzXkVOH1Iyv83voc86CjeVR6GzEsriGl9E8i4NJ9OJXqSjxPsc024QXX4V9NL/Q8jtOFwq2goym+izP66/c3WyNlnKZSQ0A1ncDqTyYANSuLh3DJY6eapdQ9X75sz4lj+yWWO/TkvH9GZj4RC0d8PkoWwOHdJvMM2vw6cRr4L2cTV4TgoOEaUHLo1mfm3seRQw+LxEk5zaXNrT6dSrYrM7v084Y0cq1d96qAXzWFoYSvUbrSUe7b+kj2cU8kUqUG3196tnTMxODg/WMB/ezH+NL6TDw4bhNabin1vd/k8h08TW/4v6WG/z3Dcpb8mvP5BdP/wDUwt7Kd/BN/gX8Kv8A+vqv2afanbzCQg5SZXdBX49PWl00p1a7tSpu3WSyx9dX5JnLWdKiv/JNX6LV+mi82cltT2iYqTuwNbAD9rR7z5X3W+VHzXsUcDGK+N3f0R5VXHSl8isvqzgO1e3X4aSsSJXzvYH1JmDspvKSXcB4LSeIp01aPoTDDVKrzS9Thdp7amxGjnZW/I3QevX1XBUrzqb7HoUqEKe2/U1qxNiIA9h9iftBML27Lxbxun6Yd7j/AKTyf9In5XEmuh04HSZIaZ7uVkUKSkMQqWACUrjAgBSpYFT1Eii6NiFHXQlsLmq7WBFZKjmMYKkA4VIRJC8AZGNedT3nltVwrulbQtzIk3yMfB4yUR3PA5jwCXCM71upJppHePlXlYWsoxzfC9PoZxlLL8S1+pocd2qwk8UschLW7oiSFzXslYcwa4NNUTRNDSnADma6YYapCSa66Pkc0sTTnFp9NVszmO03bKLCYUYfBSlzXENbQMckUdgnI/Wjo5veGa3A6hZ4m9L45r4n7v70O7heHjip9nB/Cld7+S8+fO1zicZhmzN7pGjc7HcAxrnGw7jURddHXdvzNcaIcvLn8R9bh32T27rfrvty/wCS1WuhpZcO6M5XtLSORFLnaa3PYpSjNXi7kAUHQojixqNCPwQpNO6CdNSi4yV090dp2ZxUZizAAPBp569PIf1XBxbFYnE1FGo7rkl71ftHgUOEYfAuXZK1+b6dL9F/s6vZGLxMmXDxSO1BAAJoW5znOJ5fEdRy08FnHFYutbD0vhW1krbdXv4/s56uDwtFOtLXndu+/RbeH6LcPsuRzcSMSX4QQuDI5QARIbJdlafjsAVr9rqNPUp8IwmCjGtiJKfNrZft+9DyJ8RxGLlKjQi4/wDbd/pL3e5TjtoulOlMaOAAaCeWZxA1P4DkF4GNxX8iekUo8kkj3MLg40YWbbfNs1uM7SNiG6bAJJBxfI85ReoDWNqxVak8V9Jwj/H8LXw0a1TW99m1zat6HzPFOL1qGIlSpK1rfZP8mnxu1sXiG5XyOyE02NncY4n7IY34z52V9RQpYbDvsqSSa1suS6vpf1Pn61SvWXaVG2np49y6/g3Gw+wOKxFOlHuzP2xbyPCPl96vJVVxkI7asdLBzlvoj0HYfZXCYOnRx53j9Y+nP9OTfQBefVxE6m706HoUsNTp7LXqfP8A7epC7a8gJvLBCB4dzN/5H6rI3POkARAEQBEAfRHsQ7ZS4+F+DxLjJLhWtLHnV0kR0GY83NNC+YcOdk5TVikehT7TgZKzDOmY2WYOMcZcM7w0EuLW8SAAfoeizKMgqWMQqRgBRcAFyTYFMjlm2UjOjcFvEzYJEpAjHJWZQzVSAtCsRYB0NaHl9FqtiWY2OkfHE5zcz3sjNNtjN680G04tIDiRQH7XDgtIJOST2+xnNtRbW/3PK+0Jlw7jUIgOMgD5Re8JL3ue4BzrLbytJHIj1XsUcs1vfK9OR49bNB7WzLXmcBt59yAcg38yf6LyeKybqpdEfY/4xTUcNKfNy+yX9ibNx7oiObQ66ui0kUSxw1a4jToaFggUvKUrH0sqKqLv97rn7tY30eKhmblOVwAJogNLar4Yy4AEj/8AN7Qa1aaF1dP379DNU6lOV1p762f/ANRfiPJseGzo5nmZABVF3xQkAUfnPmVLpr3/AKNoYupZbP6fiX4Q3+URNs0SBrbzKQABZvLE0X98cUuzXu/6/JTxdRpa/S35k3/8sy8LPDe7DgXNdmpoYGAVWUtbbTVjXM4k5rrnNbFSoUn2e70v0v06fU4a3D/5U4yqp5U72u/ia2ve11ztlS0VuZtsLtSSA7yFrS8cC4u7nUgNcAfW1ycGr4ehOTr3V1o0r+RzccwWKr04LDpNp6pu3n5DYvbU7mh2JmMh+y0AAN8GtAA9VvXhPi9fJh42hHm/u+/ov7OGl2fB8PmxMs1SXJfZbaLm3+jHwe0XSuEccL5HHg1gzHzpa1P8VnFXVVeaa/LOWH+UQk7dk/Jp/o67Adi3TVJiWNi/ZOV766GiWj6lLDYHF4dOnGvaP/W/pe1gxGLwuIfaSo3l/wBretr3Ot2dsXD4c5o4wHVWc6uroCeA8BQXp0oKlDJHbfxfV9X3nn1JOpLPLf7LouiM9WIiAPlH2wTZ9sYw3dSMb/siY3+CpCONQB2/s79nk22GYiRrt0yGMtjefhfiNC2M6fDluyNRmbx4JN2A5LaWz5sLK/DzxmKSJ2V7HcWn+I5gjQgghMDFQBvOxnaaXZWKbi4hmoFr2E0JWO4tJ5agHzaEmroEdf7NO0MmN29HisW/NJO2VrdKaw7pwYxg5AAUPPmSomrRKW59DFc7LEKkYlpXGAlK4FUnFZyKMl2JaBdjgk8RFRvc5czMF20AdLXE8bfZizMr96PVZ/yZdQzstbiT1WyxErbjzMb3o9VX8mXUMzGbjCOaaxUlzFmYuI2g7K4McM2U1etO5d2xetcwuiGJV05Xt797Eyk7aGq2zFjZWtw8WIAD4y17t2RlpoLe8LLS7UE3oDw1XpUMVRXxyXhr72Masakllizx3tHsOVjszh0YKpzXuGYuY140Lx8o6EaGgXxBxqTU4815+3y6nvf47XyUZUpcnfydvzv0OfYV5bPrYMuaVDOmLL45nN+FxF9CRd8UjS0XugyTOdq5xcfE2luWrRVkjoexGGgfJI/EFwaxgDQ27c5x8ugP1C5sTKCSUjz8fUxMVFYdJtvW+yR1MOAjnkywsc1o4l7s1Dqa/Jec2pytFWRyVsZPC0c9eScuSSt5L8s2Y7JYcvzvkkeOTCQPS2gGvKl7+H4s8PQVKlFK3Pdvv8T4LFReJrOtVbbfp3LuOjwBZh25IWtib0aAL8SeJPiVhLH1Zu8pNlQioq0VYyff3/MVP8yfUq4ff3/MU/5k+o7k9/d8xR/Mn1FcTG7YEET55HkMhjc95GpDWAuNDmaC1p4icmkmO58odpNqe+4qfF1l38z3gfKHEkA+NUvYirKzKKNkYH3meODO2PeyNZneQGszGsxJ6JSllTYH1fsHBRYHDx4WDuxxMocLceLnuri4myfNeTLFSd3cm5ou23Y/CbXbcwMczW0ydoGZo4hrh9tt8jws0RZShjZReuoXPDO2/YfEbKLXPe2aKQ02RorvanK5p1BoXzC9GhiI1dtxpnKroGbjsdE5+PwgYCT73CdASRUjSTprQAJ9FFSWWDfcB9X+8eK8ft31FmYN+jt2GZk3oR2wZ31JvAjtQzvqQvHRPtR531NRi5V41eTM2arfleX2kkyLl7MX10W0a7e47mY2c0uyNRtDA+XQ6ZtPh018Nf4rSNR3Wtu8GYwc83rus3eLWUXO4Cy8jTShQ6aFdTrQilb4raXei8lz8/NEWb7gTTRMBaKzEDo9zq1Fl136+ahV6zXaP5V5JX8Px4A8q0BA44s7uWQ/o22YmktD2kENL3D4tRfIChobtd2DxijRzwXO2bws3ZPZWdubfVbE2zuzfka5+ysNLhp8Mx5/RSOLhJZax7WW5jXUDWmruOlitF6GJq1ZzhOcV8S0tzV9GzbAVo4eTcW7J6/171PNJsEyY5mEh32gfiB6vH2uXeGrr4EgkzUpNScXufY4bFrKpJpxez/X6e3doYTsBK05chcejdSK6gaj1AWDgz04YmDV7gED/kdwv4Tw6+SjKzdVodUZmD2PPK4MDMpJAp2h9RxoDU6fmEpLLFylojKtj6NKLk3od9sXs2IIwJH2eLg3mTx1P04LwcRiM8nI+exX+Q3uqMfN/r+/I30ErYxlYA0eH8eq5liLHztavUrSz1Hdlnvfiq/kGVw+9o/kBcubN1K2jU01GK7E1zUyr2dguaXtX2rj2fA6VxDnkVFGTRkd+dC7J/mF1YKnPE1Mq25voNaniO3e2ePxtibEODHAjdRksjo8i0fF9619TSw1OkvhXnzLsc+txm87Hdnn7RxLYBbWDvSvA/02Dj6ngPE+a58ViI0Kbk/ITdj6LwQjw8TMPFYZExrGgmyGtFCyeK+Wq4vM23uyLlvvSy/kCueXe3PGkswsXIvlefNoY0f8ivb4PLPnfh+Sonki9ss9O9h+EG+nxJH+nG2NpI4F5t1eNM/7l5HFq+SMY9fwTJnsPvS8PtyLh96T7cdw+8p9uFw+8p9uFye8+KO3C5psXjL06/guOtUvoQ2Ye9XJlEHe/wB9EZQLYcTl0vTqtKc3ELmS3EE8Da6MzY7iTveRQtvV3Ch4Dmt4JR+Kpr3dfHovr4Cd+RiMLWDKzhdk83HqVzYrEzxEry8O5Lou4UYqKsho5y02DRHNc0bxd1uMzMTj5HQyZwWjI7vsIa4CtasEXovewGIm6sLxT1X3Cb+B3OGi2UJGFzoyXFoyPa4tdFd6gjiSOR5FfRcXx1POordNq/h+E/VMXDMRWw93F6O2j1X0NbJhcXH3Q3etFZWvaDw5aEXpep6Lhp14Si7yWn9I+gjxanpmg0+qf7Ltn4ed5DZIGMbp+qabo3XGhf8A6pTKvBbNDnxaH/BO/e/0dlgy6PQNIBGt9RzXl4ybqpZnt72PHrVp1ZXkzMfiNPNeTVSSsYMq3i5sojIjaOa2jSXMYzmg+Cp0kwAJwNDxCWa2jC5g7V2pHBG6eV2VjBqePgABzJJRTozxFRQgtWG54Z2s22cfiXT0Q2g2Npq2sbwBrmSSfUr7fA4VYaiqfPn4myVkaddYzquz/YXFYtrZXZYY3EavsPc3m5ja18Lq15eL4tQoNw3l3de9kuSR6xsDZEGBjEUDQ3QB76GeUizb3c+J04BfK4rG1sRLNN+XJGbdzZbxceoibxGoHn/thbcMD6ByyuGbmMzbryOX/tX0P+PyeeavyRcDytfUmh7j7PtmHCYNgcKfMd68cwXAZQelNDdOtr4ji2J7bEvK9Fovz6mUndnUts81wqMmtyRXSEKZOSYA3xSzyAO/KM8gJvyjtJBc0+9XRlJuTeoygHe9OPNLKARL9EZQL8KXF9AEmuWv5K6ULy0BamVKXNNOBHmuiUJJ2YzAfJqa6rllFXERk1EHxSSswNpj5xLhXQsoOflbfRuZuY/7bX0PDsVRoyjOa2u/O2nqKqnKDiuZjR00Bo1AAGvE0K1Xl1pupUlN8239RpWVjHxsb3hu7cGEOs6cQurBVqFJydeDkmrLx9/QipGTtldi1s7C4sFZgASK5Hgud0KqpKq18LbSffzLzLNl5jYiY1x5rnm2kNmNvVztAWR2deSqNNvUDLc+uK3cWhg3iVgNXt3a0eFjfPJeWMDQcXE6Bo8SSAinh5V6qpx3YJXZ4v2h7RT45+aV1MBtkY+Fn8z4n+i+vwmDpYaNoLXm+bNlFI1+Bwck7xFEwve7gB+Z6DxK6KlSNOLlN2SG3Y9N7MdhosPUuJqaQahv6uM+R+M+J08Oa+ZxvF51bwpaLrzf6MnO+x2m9XiZSCbxLKBN4jKAd6jKB5X7UtpOkxLYA45YYwS3lnfZJ8e6W/ivrOCUFChntq36L2zWC0OPwzWl7Q92VpcA51XlbeprwC9eTaTcdyz3zA7ThnGaGVsgGhLXA14Hp6r4Gth6lJ2qRaOdo2jJgQrVmhlM8wJ05LKpZsRXvFnlAm8RlAO8RlA075By4cj8y7FEzTFMn/pPKO4d7/dcUsoE3qMozp+z2XdWOJcbPlwH0/NephIJU7rcuOxZt543LiTqCK9SB+VqsUr03cctjld6vJymZN6jKBfhcRrXVXBchoyt4tMow7xGUCbxOztYRjYnEa104rGa5A2U71Z5RGbDOCB4BbxWgwSY0A1xpKUuQXEdjeily6BcwcfDHOx0Urc7XjUH6g3yNopTnSmpweqBOx5F2l2T7nOYgczaDmE8S09fEEEei+uweI7ekp215+JvF3R1nsxijDJZaGfOGXzDauh5n8gvJ41Kd4w5b+ZFRnc71eDlMyb1GULh3qMoE3qMoB3qMoHLdoeyMOLlM+9fG91ZtA5poACgaI0A5r1cJxOdCCp5U0vItTscft7ss7DgOieZh9oZcrm+IFmwvYwvEFW0krFqdzX7F2viMFJmhdlLqDmuHdfXAOB8+PFdOIw1LEQtUX9FNJnrOA222VrTwJaLANgGtQDzXyNbCOEmlsYNGwbOCuZwsIbepZQDvUZQJvUZQNGJv7vgu7KQTffXrfFGUCGZGUCb5GUDKwW1JISSw6HiDqD6LSnOUNhptDY7ask3xuFDgBoB6IqTlU3BybMXfLLKIm9RlC4d8jKBkx4/5tfFWn1HcyYMS13Ph4LSKTGmJi8Tl+HnzPJTNW2Bswd8scorh3yMoE3qWUA75GUCb5GUCuV5PAqopLcdznNvbHfiRrRI4HmPXovSwuKjRLjNIwti7GxOGJyuFOq/Grr81vicVRrJXWw5TTOqwr5AO8V5NRQ5GbaMwSrHKIO9SygHeoygTfIygTeoyjuVSxsdxFq4yktguYrtlQE3kH0WqxFVcx5mXw4aNnwilnKpKW4rmU2QBZOIXDvUZQuHepZQJvUZQNAJenqvQymdxjN9OSWQCb1GULk330RlAm+RlGTfIyAHfJZQIJkZQDvkZQJvkZQLIcXlN8U0rDuNNi83gAhq4XK98pyiJvksoB3yMoE3yMoB3yMoE3yWUYd8jKBN8jKAd8jKBN8llAO+RlAm+RlAO+SygTfIygHfIygTfIygHfIygTfJZQDvkZQJvkZQDvkZQNOfhHmV28zPmyO4lHIOQloKCUAFIBo+KGJ7AQMloAloAd/8B+SSEhUDCgCWkAbQAQUAQIAKQECACgCJAEIAiBhtMCWkAUgIgAoAiQBtABQBEAFAESA//9k=",
      "post_description":"God of Cricket",
      "post_dat":"december",
      "like":"liked by Hello,Bye and 150  other"
    },
    {
      "name":"Cricket_legends",
      "image_dp":"https://www.kreedon.com/wp-content/uploads/2019/01/sachin1-696x392.jpg",
      "post":"https://s3.amazonaws.com/nikeinc/assets/53512/11man_1600x1600_hd_1600.jpg?1456446147",
      "post_description":"God of Cricket",
      "post_dat":"december",
      "like":"liked by Hello,Bye and 150  other"
    },
    {
      "name":"Pictures",
      "image_dp":"https://www.kreedon.com/wp-content/uploads/2019/01/sachin1-696x392.jpg",
      "post":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRo8RDl7GjbVWvjpUHQPJzXUyYfjxR2QfBoaqWcFf1zZqeYobe&s",
      "post_description":"God of Cricket",
      "post_dat":"december",
      "like":"liked by Hello,Bye and 150  other"
    },
    {
      "name":"God Of Cricket",
      "image_dp":"https://www.kreedon.com/wp-content/uploads/2019/01/sachin1-696x392.jpg",
      "post":"https://free4kwallpapers.com/uploads/originals/2015/11/13/sachin-tendulkar-god-of-cricket-wallpaper.jpg",
      "post_description":"God of Cricket",
      "post_dat":"december",
      "like":"liked by Hello,Bye and 150  other"
    },


  ];
  @override
  Widget build(BuildContext context) {
    print(myItems[0]["name"]);
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.camera_alt),
        title: Text("Instagram"),
        actions: <Widget>[
          Icon(Icons.live_tv),
          Padding(padding: EdgeInsets.only(right: 16.0)),
          Icon(Icons.send),

        ],
      ),
      body:Container(
        child: ListView.builder(
          itemCount: myItems.length,
            itemBuilder:(BuildContext context,int index){
            return Container(
              child: Container(
                child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[

                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(25.0),
                                    bottomLeft: Radius.circular(25.0),
                                    bottomRight : Radius.circular(25.0)
                                ),
                                child:Align(
                                  alignment:Alignment.bottomRight,
                                  heightFactor: 1,
                                  widthFactor: 1,
                                  child: Container(
                                    color: Colors.black54,
                                    width: 60.0,
                                    height: 50.0,
                                    child: Icon(Icons.face),
                                  ),
                                )

                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(myItems[index]["name"],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.more_horiz,color: Colors.black,)

                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Image.network(myItems[index]['post']),
                        Padding(padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Padding(padding: const EdgeInsets.all(8.0),
                              child:Icon(Icons.favorite_border)
                                ),
                              Padding(padding: const EdgeInsets.all(8.0),
                                  child:Icon(Icons.comment)
                              ),
                              Padding(padding: const EdgeInsets.all(8.0),
                                  child:Icon(Icons.send)
                              ),
                              Spacer(),
                              Padding(padding: const EdgeInsets.all(8.0),
                                  child:Icon(Icons.bookmark)
                              ),
                            ],
                          ),
                        ),

                           Padding(
                             padding: const EdgeInsets.only(left: 20.0),
                             child: Text(myItems[index]['like'],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700
                              ),
                          ),
                           ),
                      ],
                    ),
                ),
              );
            }
        ),
      )
    );
  }
}
