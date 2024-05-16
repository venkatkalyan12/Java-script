<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paymentsAPP</title>
 
</head>
<style>
@charset "UTF-8";

*
{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
.full-page
{
    height: 100%;
	width: 100%;
	background-image: url("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAsJCQcJCQcJCQkJCwkJCQkJCQsJCwsMCwsLDA0QDBEODQ4MEhkSJRodJR0ZHxwpKRYlNzU2GioyPi0pMBk7IRP/2wBDAQcICAsJCxULCxUsHRkdLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCz/wAARCADqAW8DASIAAhEBAxEB/8QAGgAAAwEBAQEAAAAAAAAAAAAAAQIDBAAFB//EAEgQAAECAQkDCAUKBQQDAQEAAAEAAgMEESEicXJzsbIxMsEjM0FCgYKzwgUSQ3TDEyQ0UWGDkZLR0kRSYrTwY5OhohVT4RTx/8QAFwEBAQEBAAAAAAAAAAAAAAAAAQACA//EACMRAQEAAgMAAQQDAQAAAAAAAAABAhEhMUHwAyJCUTKBkXH/2gAMAwEAAhEDEQA/APnX/nJV6sNpk8ic1gd6odCcAARMQAH9v/xD/wA1LJg0wZGWl055Eg0gTzH1p/8A+ryv0THaOzILe6Hot9MSlsZ8VknkYc9wdN8kS0ENDRNO77F5zjP6xoE7nGjZTTQgN4diM1BtKk7rdgQ/+I9PYEP8/wCUIx6O1KOPApzsHalA1cCoB0jtR6PyoTUi0pugd3ilAei6FxFItcj9VwLvqtcol/lTdB7yX+W0J+gm8qAo2C3guPVRHHgu/lsVEI2OsPFJ0NtGSoNj7p4pZqBa3JKD6rSn/wDZY7JKei1OBztjslTtVM9KP6cESKDYF02SAXqi8UR1bXLuqLx4JgKWWuyUS9LLCuHXt8wTAUssPFcBQ+3zJQHagNnYck01KDdnYclADtFrsguG11qLhSLzh/wFzRS61RDpdb+iDd/vJv5rf0XAH1+8hOHT25lINotCoBt72ZSDaLRkpOO92Hij0fjwQO92Him6Px4KQOnq9mSQdNpVXDm+xT+u05K0o6akdq5vT25hH6u1Fo2/50hRKNq767Uen8UP5rVIOkdqI2BdNSO1cNgRpFTDosQRHRYUIP0THq/50BL+iY9W3gFpFG8OxN1TeKA2jsR6HXjkpOmrdgXTUHszTdbutQm29maQJGztzQaNQyKcjZ2pW9N4ZFVRfqtKPR+Xium3bSnmo/LxUCzUdwFdNstcmmE33YyRI3bz1Lac27aqAUHv8EoFDbQqAUO+84KkSYGrgjNS2wogUd45IzUs27CnQAAzPunilmNW1uSq0UPunilmoZa3JGjKSbZaVQCiNddkgRSLxVAKI912lMnIt4SOw2BcQKLs6Yt3rAj6uy7wKtJKYeoLx4JwKWWuyQm5MX3cFRopZa/JUiIBTD7eK6aiJ9hGpOBTCsPFcBRFtGsJsBCKfxQaKPxyVCKfxSsFHYckLZXCkXnZBcBS60qjhSLz8gg0UvtOStGVObfvfouaOUF5PNS+0Zhc0cqLytIAN6x3FTaDOLRkrtG9Y/ipME7mj+pqrFKU7xsPFNNV/HgjNyhunimAq/j5VaWyvHN2DIKQGZyWh4og9mQUR02nIqplAjdtOYTAZcQiRsvHMIsG2w5hWlsgG20pZt+3iqgbbXcUn897iiwwvS212a4CjtRG83vZrm7FIiI6LCuPQuHRYVku6OxMer/nQEvQLEx6toyCUVoPrDsyTTH1XXjkg0VvwyTTVXXjkkD1u61Cag9maM1futXAUdg1BI2ciYM72ZSNG9fGkqpFDO9mUjBvYg0uTZyJSzUttKeYTfkyKBFLbxVJqs/2Q8nK0tlmoGEMlxG5eiJ5qG4LckSNy9FVobSAoh3v1VAKr7InBACiHeHFVAqvsi/8TJkVqTRQL/lCM1LLrkzRR3/KE01MO65WuBsrW1Ylx3FIRQy8zJXaKsa47ipkUQ7YeStKXkpG7edxVmtolVyJoSEbt53FXa36XhxfDWsYzlWYih3Yum2XeBVC2h/Yu9WkXOBWdNbRm5NuI/NqdophXomSM3JNxX5tVGtphX4uSZFamG1oFh4rg2rGvDxAqhteT2HiuDZ2Sj7HN8UJ0zKkRSO3NLDbODYclctrDtzSQhQe3SrXJ3wR7ZnNvxNLUGtpi2nJWiNrMvxNLUrG1ot52SNcqdJzc5eGYQaOW7/6qvq87fGYQY35wB/qTZq0ZQa3esf5lFgrNvNyWtjd+x/mWeGK7b7MlZToS9lI5V108U81X8fKiRyz7h4p/Vq9h8ipFaSKOYsbpCgBtvOyK1xWzCTd3SFmaNt52RVlDj06bdvHMIsbQe3MJiNy87MJoY3u3UFSKpAUnvcUpHO3uKqBS612ZSEc9fOaLDKnNWb381zdg7OKeasy2JmUG7ot/VDSdNXtXNGyw5onY3tXDos4rPqJ0dic9W0ZBL0dic9W0aQolbv/AJck5FR145BK3fHdyTgcm6+7IJgo+0A/oZkhMZjYNQTzcr3YeSAFBsbqSyoRzffzKRg3sQaHK5FEOx+ZU4QofjDw3rdnLMvBJjOy8VSar/tZOSzVod5ytNV/2snKk7VpQKrcBuQRc3cvxuCM1Vnu7ck7hTDxI/BWhvlACrCvDirAVIlkbgkAqwb44q4FSLZG4JxiyqLBVB/1PKE01MK65MwVRinQEZqYN1ytcDfLmNqx8N3FSmoh3oeS0sbUlGE/zKJFWHehZJql5KRu3ncVoYKJb9kON4amRSy+7itLBRL8KP4acWc7wyOFESwFdNS25wKo4VYljVxFLbnByNHaM3Itxn5sVWCmBfjZBCbkW40TNiqwVpPfjaQrGK0gFeTWO8yDW1JVeZ4oVQK8luu8y5oqSu+zxgtM2/P7SIrDtzCSEKpsdpWgtrDvZhTgiqbHaVa5O+CxG1mYkUf9WIQxWjXnZK0UVmYsbSxJDFaPedkrXJl4Tm56+MwhDb85GL+qrNTGvtzahDHzoYv6rOjsWDfuxDqWWGOUbfZpK3MFMS7FzessIcozEh6U5ToS9lI5d1x3mTzVfzfDXOHzh+G7zKk1T83w1SLKhGFEl7ugLI0b192krfHH0OxmgLG0b19+kqznKwvDiObvvzamhNod26mokc1ffqangih1h1NVJyrUQKXWvzKRw5++c1YCl1sTNym7+IxPMiwyp0+vDti6kGCdot/VNNXh2xtS6GKvaOKx66bRIob25rgDVsOaLtje3NcOrYc1k+J/tTkblo0hJ+1UPU/zqhBBm+O7kqTcm++7IJGb47uSp7N992QTOmaPte5DyXDYbG603tfu4eS4Cg2N1rpIztYiiF95mVOEKr8YeG9XIohWRMypQt2JR/EDw4ibGJeCzUwr7laar2QcnqfTCvu4K01Xsg5PVJ2regmqQ/dWaQmcOaxJT5VwFSH7qzSE7xTBxJT5U0b5QAHqwcRvFaGipFsj+VSAqwL44rQ0VI1ko8qsZ2M70iwVRjHQE01aDdfwRYKoxjoCYimBdfwT4d8jDFSUYMTJygRVhX4WS1QxUlGDEycoEVYV+DpVRj2BG5ffm5amCr6Qwo/hKBFLL783LUwUekcGUeEtY9s59fP2yEVYl0IzUtwxk5M7di0dDeCPSzDGTkFCbkWY0TNiswVpPiR9ISDmBR/ERB4auwVpNiSjSEYzlWkAryS67zItFSWX2eO1MBykjsd5kWipLr7PHat6Zt+f2mRWHezCSCKpsdpCsRWHezCSAKpsdoCvyP4liiuzGjaWJYYrx7ztKtFFZmNG0Q0kMV4952lHql+0k3P4gzahDHzsYx4qk3P4jdTUIY+djG/VZa3xTsHOXYub1khDlW4kPSt0Mc5di5vWOEOUbiw9JWspzGcLxQcPnETDd5lQAep+b4aVw+cvwnedVmqDv/CRIb1HSgD5lYw/9AsTQKcSJpK9COKJDYwf9GrC0b2I/Q5azn3L6d4EimFiP1NTwgJnWHW1cdsHEiamp4IodYdbFTsW8JACd96Jm5ScPpOJ5loG88f1RdTlFwmMq+yKdSzlGsal7SFbH1FdDpaLf1RPOQrY+oroYqD/AD61z9dag7Yyw5rgNlhzROxlhzXDq3TmsXtqdI/tVT1KP89UKX7VU7WdmgIjVCHzg7uSr7KJfdkFOHvjuZKvsn33ZBOPTN7PMPlvu4WSA2GxutN7b7uFkgNhsZrXTTna0maaFZEzKnCAmie8N8KIrHZC+8zcpQt2L7y3woi3lOY549UhFMKb+d/BaJqvZA0vUTthX3cFfqdkDJ6JOzfHCb1IfukPSnf7HFlWTUoFSF7nD0hO/bBxZXk1OuGfUGirAvjitTRUjWSjyrON2T4jeK1N3I1kq4JwWSUMVBjHQESB60C6/guhiqMc+GEemT3X8EScH08IVJTgxPOoEVYV+DpWmEKkqwYnnUDP6sG/B0hOUGN5cdrL783LUyab0jhR/CWZ21mI/Ny1w9npPClHhJx7YzvHz9szpvVi2NXHazDGTkXbsW61E7WYXBym9ojmG+8xfhq7Jp5LiSjSFL2DfeYvw1dm9JsSUaQjHsZdFaB8pI7rvMmaKkuvs/uGrm85I7rvMmbuS++3+4auk+f452/P7TIrjvZhJJxVNj9AVTvjvZhJJ93sfpR+Uat+2jFFaHjR9ENJDE75RefpVIu9DxpRohpIc/ryjbvv0o/Iy/aWYTyjEGpqEP6W3G/cmIplGINTV0IfO2437llry/8AFYYpi3Y3nWKFzrMWFpK3wtsW5G+IsMLnYeLD0lay8Zw9c76VEwnedWm5MWvygqbvpUTCd51X2Y+8ygqndVvQyjZILsPQ1YG7HYj9Ll6Mo2ej7GeG1YGdbEiaXK+pPuX0v4mcByOJE1NTwdj7DrYlPscWJqang7H2O1sWse1ekxtiWxc3KL9ssxTqV27z7YublF+2WYp1LOTWPaftIVsfWUIe4LRxTe0hWx9RXQ9wWjiuXrr4zu3WWHNcOrYcyi7YztzQb1bpzK5+tzpKY/8AVUPU7NAU+juqp6nZoCzGqEPf/JkrTH5J+I7IKMPnPyZK/somI/ILWPTGXZ/bfdwskrQfVNjfETDnhhwskG7psbrXVzazsgWRc3KUHdi+8t8KIrHZAsi5uUYOyL7y3woi1l3GMeqWYzwb7+C0dTsk+l6h1oN9/BX6nZJ9MRUnay8EbkL3OHpCd/sMWV5NSDche5w9ITv9hiyvyq8HqQB9WT4jeK1Nn+TjWSryrK01ZPiDJy1N5uNZKvKnBZpw90Yx8MIzGeT3H8EIe4Mc+GEx2ye4/gjw+qQ9yVYMTzqB3IN+DpV4W5KsGJ51A7sK/B0pyZx7rnbWYj83LZD2ek8GUeEsjtrMR+blrh7PSmDKPCWse/n6Zz6+ftndP6sW63guIM7MPg5c7di3Wok0sw+DlmtJj6Oz3mL8NWYKZLiyjSFH+Hb7zF+ErMNMlxZTpCsTn6IB+Ukd13mRbuekL7P7hqAPKSK6/wAyLdyX32/3AXST5/Tlfn+gd8d7MKcn3TY/SFQ7/wCbMKcn2Gx+kLPsa/Gmiz+tDxo+iGhC35RffpTRd6HjR9ENLC35TffpV6vxAgzynEbqalhfTBjfuTE0ynEbqalhfTBjfuWW/L/xeFtjXI3xFig87DxYelbYW2NdjfEWKDzsPFhaVrPxn6fpnfSomE/J6r1B38oKk76VEwnedV9mLX5QlTuq+GlM83o+yH4bVgZ04kTQ5ehKd30fYzw2rz2dbEiaHJ+p/JfS/iofYD/Viamp4Gx9jvEYkO2DixNTE8DY+x3iMTj2r0Ru2JbFzcovnnluMdas3a+2Lm5ReaZZjHUs5NY9p+0hWx9RXQ9wdnFd7SFbH1FCHuDs4rj66+JHdh2OzStBq3TqTHdh2HNBvVunMrHrpOkugXFQ9Ts0BT+q6qHqdmgLm1Qh84e5kr+yiYj8goQ+c7WZK3somI7ILpj0zl2r7b7qFkgN11jPER9t91CyQbsdYzxAukcq1uoECyLqcowd2L7y3wois7ZBsi6nKMHdi+9N8KIumXcc8eqB2wb7uCv1Ddk+mIoHbBxHcFbqGyT6YiJ6b4YbkL3KHpCd/scWV+VTG5C9zh6QnibYOznZZ5VD1Nu7AxBxWpvNxrJV5VkaasDEHFamnk41kr8qcFmSHuDHOgJutJrj+CSHN6gxz4YR60nuP4LPi9WhTepKcGJ51A7kK/B0q0I1JVgxPOoE1YN+BpC1Rj3TO2sxH5uWtmz0pgyjwVjPUxH5uWuHs9J4Uo8FOPfz9M/U6+ftB27FutXHbDw+DkHbsW61d1mYfByKS/w7feYvwlZm2S4sp0hZx9HZ7zF+Grs2yTFlOgKw7azM3nJFdf5kRuS++3+4CVvOSK67zIjc9IX2/wBw1bnz/HK/P9cd8d7MKcn3TY/QE53hY7MKcn3TY/QEew/jVIu9CxpRohpIe/Kb79KMU1mY8fw4aWGa8pvv0o/I/i47ZRiDU1CD9MGNwcu6Y+I3U1CEfnoxv3LLfl/40wtsa5G+IsMHnYeLD0rbD2xbkb4iwQedh4sLSVrPxn6fqj/pUTBd51X2YtflCUX/AEp+E7zqvsx95lBVO6r4pKd30dYzw2rz2dbEiaHLfKdno+yH4bVgZ1sSJocn6n8l9L+Kp9hjRdTE0HY+x3iMSHbBxYmpqaBsfY7xGJx7F6KNr7YublF+9LcY61YbXWxc3KD9ssxjrWMnTHsntIVsfWV0PcHZxXHnYVso1FCHuDs4rnO3TxI7sOx2aUdWw6ii7dZYc0Gz1bp1Lm6TpP8AaqHqdmkKf7VQ9S0aAsN0IfOfkyVvZRMR2QUYfOdrMlb2UTEdkFvHpzy7V9t91CySjY6xniBEc991CyQG66xniLpHOtjtkH73NyhBNWL7y3wois7ZBsi5uUYO7F95b4URby7jnj1QJpg33cFcmqbJPpesxNMHEdwWiceoT0zSfS9E9N8GepC9zh6Qnf7HFlflU+pC9zh6QmiGmDiyvypHpG7snxBxWppHycayVZNWMbsnxG8VrZuRrJVkFYLPxOFuDHPhhN1pPcfwSQzUGOdARnrSe4/gjw+rw9yVYEXJ6zkj1YN+BpCrDNSVYEXJ6gd2Ffg6U5DHtQmlmI/Ny1wzR6TwZT4KwuNLMR+blsh7PSeDKPBWsO/n6Y+p18/aLt2LdauO1mHwckcasW61EmlmH5XIa8KOYb7zF+Grsn9aSYsp0hZgfm7PeYvw1ZhPrSWn2sp0hGPZzUbzkiuu8yLdyX32f3DVNp5SRXXeZM01JffZ/cNW58/xzvz/AEXb472YU5PuusdoCYmsO9mFOTmqbHaEflDf41SLvs+2PH8OGlh78ovO0rou9Dx4/hw0kM15RffpV+R/Ex2yjEbqalhH54MY+ZdPTKMRupqEI/PBj/uWWvL/AMaYW2LcjfEWKDzsPFh6StcI0xbkb4iwwTyrMWFpK1l3GcPVXfSomE/zqvsxbEyhKDvpUTCd5lUHk/z5QUTtXxWU7PR9kPw2rz2HexImhy3ygj1fR9kPw2rAzrYj9Dlr6nZ+l/FUnmcWJqYngGh9jvEYpuPNYsTU1PANDx9jvEYqdq9FG19sXNyi80yzGOpVaaX2xc3KL9ssxjqWcmseynnIVsfUUIZqC0cVxPKQrY+ooQ9wWjiuXrr4k7dZ9oOaDerdOornGhn2T5rh1bpzK5+tzpP9qofZ2jQFLo7qoep2aAsxuuh852syVvZRL78gow5vlNv8mSt7KJffkFrHpzy7U9t93CySg1XWM1pvbfdwckom9U2N1rqw2O2QbIublCDuxfeW+FEVXTerBsi5lRhbsX3lvhRFvLuOePVA7YOI7gr7GGyBk9ZyaYN93BWnqGyT6XonrV8NPUhe5w9ITRDTBxZX5Ugn9SF7nD0hF+2DiyvyqZ1ymDVgYjeK1MPJxrJVkFjaR6sCn2jcitTSfk41kq8qsVnOiwzVbjnQFxNaT3H8EkM1RjnQE09MnuP4KnS9WhGpKcCLk9QJqwb8HSrQzUlWDE86zE1YN+Dkq0Y9qk7mI/Ny1wzR6TwZR4KwkmdmI/Ny1wzR6TwZR4K1h8/xnOcfP2i41Yt1qM9LMLyuSONWLY3gjPSzD8rkWt6L/DN95i/DVmGtJcWU6QswPzdnvMX4a0MNMlxZTpCMbysujNPKSK67zItNSX32f3DUjTykjuu8yLDU9IX2f3DVufP8c78/0Sa472YU5OavY/SEzt8d7MKcnJ9U2O0K390as+2qxTWh40fRDSwjXlF9+ldFNaHjR9ENJCNeUX35I/Ja+0xNMoxBqahCPzwY/wC5LOZ4+I3U1dDPzwY37llrXFaYW2Lcj/EWKCeVh4sPSVrhGmJcjf8APrrFBJ+VZiw9JWsvBhO1Hn5y/Cd51Wn5Md/KEoOPzl+E/wA6sObp/r+EiKziKyjd9H2Q/DasLOnEiaXLZKDV9H2Q/DasLOnEfpcn6l+5fTn2rH2OLE1NTwZ5n2O1sU3eyxImpqaCaH2O1sVLyrOHDa+2Lm5RftleKdSoDS+2JqcpPNMrxTqRlWpOSU/KQrY+oroe4Lf1QPOQrY+ooQ9wf59a5euqZ2MsOa4dW6cygdkOw5rh0WHNc63Ok59l1UPVtGkKf1XVQ9W3yhZjVCHvjuZK3somI7IKLN8d3JVHNPxHZBax6Yvak/LfdwskBuusb4gXe2+7hZIN2OsbrC67Ya3GiDZFzKhBNWL7wPCiKz9kKyLmVCEasT3hvhRFrLuMYzig7bCvu4K89Q2QNL1nJE8K+7gqk1DZAyer9mzo4NSF7nD0hF55rFlWTUg3IfukPSEzjzWLKsmq8GuUm7sDEHFaWnk4tkq8qyNNWBfHFaWzepFslPBWFWXhYZqDGOgJp60nuP4KcM1fvjoCJNaBdfwRvha5XhGpKcGLk9Zzuwb8HSrQzUlODEycs5NWDfg6VZVYzlRxpZiPzctcM0ek8GUeCsLjSy+/Ny1sNHpHBlHhLeN5YznHz9ouNWLY1GelmH5XJHmrFsbwXT0sw+Dlmt/oJ/m7PeIvw1dhpkuLKdIWWcfIM94i/DV2GmS4so0hWIynB2nlJHT1XeZFpqS++z+4akaeUkd13mRaakuvt8dq1tiz5/YuNcd7MJJOapsfoCLjX/NmFOAR6psfoCt/c1rhWMa0LGlGiGlhGvKL78l0U1oeNG0MSwzXj3n6Ub5Pgz8/iN1NXQz88bjfuSziePiN1NQhn52Mb9yGmmGaYt2Lm9Y4J5VmLD0laoZ527FzesUI8qzFh6SnK9M4TiquPzl+E7zq0/J/n+Es7j85fhO86sDUPf8AhIlOU4isoNWQXYfhtWFh3sR+hy2RzVkN2H4YWJhFbEfpKfqX7hhOFieaxH6mp4Ox9jtbVMkclffqang7H2HW1UvKy6AbX3omblFxplR+uKdSqCJ33omblF38TiHUs5VrGBPykO2NqKDDVFv6ruuy2NqKVm6Lf1WPXXSZ2M7c1wO7Yc1x2M7c0B0WHMrm14T9qoerb5Qp9HdVCd20aQiEGb/a3JV9k++7IKLN8d3JV9m++7IJxoqk/K/dwskBsNjdaHtTch5IAmY2N1rpGK1u2QrImZUYWyJjt8KIndPNCsiZlShmrExh4b1qsToCa0K+7grEj1OyDk9QO2Hfcq9X/ZyejfZ10aepD91ZpCLzzWLKeCTqs92h6Qi+fk8SUcE+LXJG7sDEbxWhp5OLZKfKsonmg328Vdp5OJZH8qsKsisNUYx0BGetAuv4JIZPqjFOgIzmeDcfwRbwtcrwjUlOFEycoE1YV+DpVIZqyjCf5lAmrCvQtKb0pOVHGlt9+ZWqGaPSODKPCWNxpbfdxWmGaPSGFH8JawvLOXXz9pONWLY1GelmGcnJHbIljUSaW4fByydFB5BmPEzYrsNaTYkoyCzz8izGiZsVWGtJ8SPpCMVlDtPKSS67zIsNSXX2+OEgI9eS3XeZcw1JZeb4wW5eWbPn9mJrDvZhJANU2O0BEmuO9mFOCapsdpCN8nXCsU1mY0bSxLDNaPefkuimtDo9rH0sSwzWj3nZKl5WuBn5++3U1dC+ljG/VLPTGvjNq6GfnQxf1WbWmmGRyt2Nm9Y4JHyjMWHpWmG6mJdi5vWSET8o2j2jNK1lemceqqfpETDdk5VnqHv/AA1ncT/+h+G7zKoNQ2O+GiXmtWdLRzRIrrNDVjZ1r79JWqPSJHYzQFkb0336SnPsYThUnmr79TU8I0OsOpqkfZ336mp4Rod26mq2bOBG11sTNyi7+IxPMqA0utfm5RdtlGIc1m04wJ68O2NqQZu9o4rjvsti6kGGq239VzbIdjbDmuHVsOZQPV7c0R0WHNZPifR2Kh6tvlCn0dic9X/OgLLTm7/5ck/UdfdkFNu92tyT9R145LUFPPylrIY/4QbsNjdQXT8oLrEJ6OwagtbGmlxoh2PzKlD3X4w0PTE0MsfmVOGaHYo0OWrWZHE0w7zlUmp/tZOUCaWXncFQmp/t5ORPVYcmq33dg/4CLjzeJHOSSehuA3ILnHcvxlbWiNNWDfHFXBqRLI/BZwR6sK8OKsCPUiffcEyqwGboxToCM9MG67gpsNAxDpCaemFdcrfA1ysw1ZRhPycoE0Q70PJOw1Y2G7zKRImh3oeStqdnO1lPXdmVpYaJd9sKP4ayE7t92ZWhhollPso3hrWN5GU4TJoiWBGeltzgUhImiWBdPMW3OBWdl0/ItxombFVppk9+Of8AhQnHyTMV+bVRprQL8bJUqsUBrya6RqXNNSV3m+M1IDXk9h4rmmpKrW+KFrbOjk1h25hTgmg2O0ok1vxzSQiJux2lW+TrhWKaYeLG0sSwzWjfa52SEQ1mj6okQ/i1qDDM6LedkjqqdGnpi3xmEIZ+dDF/VLPTFvjMLmfSJ/8AU/VWzrhohnnLsXNyywzNEbiMyV2HfsiZuWaGeUbfZkrK9KTiqE8u77WO8yqDU7HfDUCeXdcdxVJ6n5hoRFYtGd9EsboCytNBvu0lXimiTWN0BZ2HbedpKcryMIoepffqanhGh3bqapz7l92oIwzQ6w6gqU2CDS61+ZUnGmPfOacGk2vzKmTz1/is2mR09dlsTNBu6Lf1QJrN7+a5uwdnFZbIdjbCiOiw5oHYO1EdFnFZRDs7Ex6v+dAS9AsRO1tvAIac3e/DJP1HXjkkbvfhkj1XXjknYP1u61Do/DNCev3QgDR+GadiRcmhnezKm3rXxpcmJoZ3sykad6/5Sm3lScOJpZePBUnq/wC3k5RO1tpTz0Uf0ZFWxYoTQMFuSDjuX4qWegYQyXOdu3oitoo2Q7w4qwNV9kXgoT7loVAar7InBUq05poF/wAq6emHdclaaBfOlH+SxytrSjTVjXHcVOeiHeZkmaaIlw8VOehlrMlbWjk7t53FXaaJVhxdCzHovHiqtNEouP0plFhSaHdiM+jgUhNDuxdPsu8CjZ0M/JNxHZtTtNMG9EyUvZtxHZhM00w7z8lSqw4NaDYeKINWP9pb4gSA1oNh4rgaI1o1ha2NHJrfjwSQzR2OyXE0/ilhmj82SNrSjzWbfiZNQYTPEtdkleZy37HPyC5u2JaclbOhn5y8MwuYeXF/9Us5nfeGYXMPLT/1o2tcLsO/ZEzcs8M12325KjTvWPzKi01xebkq3oSdqE8s647iqA1fx8iiTyjrp4pwav4+VUpsVimiT2N0hQadt52RVIp5mwZBRadRyKcqMYpPu3nZhGGaHWHUFMndvHMJmGYGw5hWzoQaTa7MpCedvcUQdtruKX/2XuKKY7rNtfmubsQ6ze/mg3YskDsC4dFhzQ6AiOiwoRf0THotGQS/omPVtGlBAbw7Eeq68cko2jsTdU3jkkDPW7GodB7M13W7Grug9maUcmhveSjpveUpjsb3s0g614ZFCjp6W2lN1fy8Un8tpTdX8vFKHo+7C4ndvPXdH3YXHq3noRRsZaE42O+84JBsbaE43Xd/gpFbsF7gjPS2woN2C9wXdLbClHaaIl0jNJ0NtbkmbsfdPFKera3JCd9Vp4qgNEf7Wv0qf6nimHtbrslRASa1gRpoujih9dgXfVdHFKdPUaP63cEwNLLX5JOo287gmG1lrslCiDTCsPFcDRFtGpKNsOw8Vw2RLRqVtGJp/FBhmG3oOS4/qlbs/HJSO40inrPyCDTS60oO2i1+QXN61pUhn37RmEGk/Ki8u/nvDMLm86LwUTtO93sypt3heCcdbvZlSbvd4Ko0brmw8U4pHYeCmd83TxTN2Ht4KJ4hn+SsGQUm8TkVR3s7BkFNvE5FNEN/LacwmadthzCX6rTmER0/50hCcDttPFLPv28UR02nigevac1EBvN7yLdnagNre8i3Z2oJTsCI6LClPQiOiwoT/9k=");
	background-position: center;
	background-size: cover;
	position: absolute;
}
.navbar
{
    display: flex;
    align-items: center;
    padding: 20px;
    padding-left: 50px;
    padding-right: 30px;
    padding-top: 50px;
}
nav
{
    flex: 1;
    text-align: right;
}
nav ul 
{
    display: inline-block;
    list-style: none;
}
nav ul li
{
    display: inline-block;
    margin-right: 70px;
}
nav ul li a
{
    text-decoration: none;
    font-size: 20px;
    color: white;
    font-family: sans-serif;
}
nav ul li button
{
    font-size: 20px;
    color: white;
    outline: none;
    border: none;
    background: transparent;
    cursor: pointer;
    font-family: sans-serif;
}
nav ul li button:hover
{
    color: aqua;
}
nav ul li a:hover
{
    color: aqua;
}
a
{
    text-decoration: none;
    color: palevioletred;
    font-size: 28px;
}
#login-form
{
    display: none;
}
.form-box
{
    width:380px;
	height:580px;
	position:relative;
	margin:2% auto;
	background:rgba(0,0,0,0.3);
	padding:10px;
    overflow: hidden;
}
.button-box
{
	width:220px;
	margin:35px auto;
	position:relative;
	box-shadow: 0 0 20px 9px #ff61241f;
	border-radius: 30px;
}
.toggle-btn
{
	padding:10px 30px;
	cursor:pointer;
	background:transparent;
	border:0;
	outline: none;
	position: relative;
}
#btn
{
	top: 0;
	left:0;
	position: absolute;
	width: 110px;
	height: 100%;
	background: rgb(0, 255, 255);	
	border-radius: 30px;
	transition: .5s;
}
.input-group-login
{
	top: 150px;
	position:absolute;
	width:280px;
	transition:.5s;
}
.input-group-register
{
    top: 120px;
	position:absolute;
	width:280px;
	transition:.5s;
}
.input-field
{
	width: 100%;
	padding:10px 0;
	margin:5px 0;
	border-left:0;
	border-top:0;
	border-right:0;
	border-bottom: 1px solid #999;
	outline:none;
	background: transparent;
}
.submit-btn
{
	width: 85%;
	padding: 10px 30px;
	cursor: pointer;
	display: block;
	margin: auto;
	background: rgb(0, 255, 255);
	border: 0;
	outline: none;
	border-radius: 30px;
}
.check-box
{
	margin: 30px 10px 34px 0;
}
span
{
	color:#777;
	font-size:12px;
	bottom:68px;
	position:absolute;
}
#login
{
	left:50px;
}
#login input
{
	color:white;
	font-size:15;
}
#register
{
	left:450px;
}
#register input
{
	color:white;
	font-size: 15;
}</style>
<body>
<div class="full-page">
        <div class="navbar">
            
            <nav>
                <ul id='MenuItems'>
                    <li><a href='#'>Home</a></li>
                    <li><a href='#'>About Us</a></li>
                    <li><a href='#'>Services</a></li>
                    <li><a href='#'>Contact</a></li>
                    <li><button class='loginbtn' onclick="document.getElementById('login-form').style.display='block'" style="width:auto;">Login</button></li>
                </ul>
            </nav>
        </div>
        <div id='login-form'class='login-page'>
            <div class="form-box">
                <div class='button-box'>
                    <div id='btn'></div>
                    <button type='button'onclick='login()'class='toggle-btn'>Log In</button>
                    <button type='button'onclick='register()'class='toggle-btn'>Register</button>
                </div>
                
                <form action="LoginServlets" method="post"  id='login' class='input-group-login'>
                
                     <input type='text'class='input-field'placeholder='Number'name="Phno" required>
		    <input type='password'class='input-field'placeholder='Enter Password'name="Password" required>
		    <input type='checkbox'class='check-box'><span>Remember Password</span>
		    <button type='submit'class='submit-btn'>Log in</button>
		 </form>
		 
		 <form action="RegisterServlet" method="post" id='register' class='input-group-register'>
		     <input type='text'class='input-field'placeholder='First Name'name="fname" required>
		      <input type='text'class='input-field'placeholder='Last Name'name="lname" required>
		      <input type='text'class='input-field'placeholder='phone no 'name="phno" required>
		      <input type='email'class='input-field'placeholder='Email Id'name="email" required>
		     <input type='date'class='input-field'placeholder='Date of Birth'name="dob" required>
		     <input type='text'class='input-field'placeholder='Address'name="address" required>
		      <input type='password'class='input-field'placeholder='Enter Password'name="password" required>
		       <input type='password'class='input-field'placeholder='Conform Password'name="password" required>
		    
                    <button type='submit'class='submit-btn'>Register</button>
	         </form>
            </div>
        </div>
    </div>
    <script>
        var x=document.getElementById('login');
		var y=document.getElementById('register');
		var z=document.getElementById('btn');
		function register()
		{
			x.style.left='-400px';
			y.style.left='50px';
			z.style.left='110px';
		}
		function login()
		{
			x.style.left='50px';
			y.style.left='450px';
			z.style.left='0px';
		}
	</script>
	<script>
        var modal = document.getElementById('login-form');
        window.onclick = function(event) 
        {
            if (event.target == modal) 
            {
                modal.style.display = "none";
            }
        }
    </script>
</body>
</html>






 