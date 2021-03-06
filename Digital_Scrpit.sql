USE [master]
GO
/****** Object:  Database [digital]    Script Date: 4/5/2020 1:37:14 AM ******/
CREATE DATABASE [digital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'digital', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\digital.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'digital_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\digital_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [digital] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [digital].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [digital] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [digital] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [digital] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [digital] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [digital] SET ARITHABORT OFF 
GO
ALTER DATABASE [digital] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [digital] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [digital] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [digital] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [digital] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [digital] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [digital] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [digital] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [digital] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [digital] SET  ENABLE_BROKER 
GO
ALTER DATABASE [digital] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [digital] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [digital] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [digital] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [digital] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [digital] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [digital] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [digital] SET RECOVERY FULL 
GO
ALTER DATABASE [digital] SET  MULTI_USER 
GO
ALTER DATABASE [digital] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [digital] SET DB_CHAINING OFF 
GO
ALTER DATABASE [digital] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [digital] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [digital] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'digital', N'ON'
GO
ALTER DATABASE [digital] SET QUERY_STORE = OFF
GO
USE [digital]
GO
/****** Object:  Table [dbo].[digital]    Script Date: 4/5/2020 1:37:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[digital](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[image] [nvarchar](50) NULL,
	[author] [nvarchar](max) NULL,
	[shortDes] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[timePost] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[digital] ON 

INSERT [dbo].[digital] ([id], [title], [image], [author], [shortDes], [description], [timePost]) VALUES (1, N'Đài Loan xác nhận ca tử vong đầu tiên ', N'i1.jpg', N'Henrry', N'Reuters dẫn lời người đứng đầu cơ quan y tế Đài Loan Chen Shih-chung tại một cuộc họp báo hôm nay 16/2 xác nhận, hòn đảo này đã ghi nhận ca tử vong đầu tiên vì virus corona chủng mới (hay Covid-19).', N'Reuters dẫn lời người đứng đầu cơ quan y tế Đài Loan Chen Shih-chung tại một cuộc họp báo hôm nay 16/2 xác nhận, hòn đảo này đã ghi nhận ca tử vong đầu tiên vì virus corona chủng mới (hay Covid-19).

Quan chức này cho biết thêm, bệnh nhân là một người đàn ông khoảng 60 tuổi, gần đây không từng ra khỏi hòn đảo, nhưng có bệnh lý tiểu đường và viêm gan B.

Đây là ca tử vong đầu tiên tại Đài Loan vì virus corona chủng mới. Đến nay, hòn đảo này ghi nhận 20 ca viêm phổi cấp vì virus corona.

Dịch viêm phổi cấp do Covid-19 gây ra bùng phát từ thành phố Vũ Hán, tỉnh Hồ Bắc, Trung Quốc. Dịch bệnh này đã khiến hơn 1.600 người tại Trung Quốc đại lục tử vong, gần 69.000 người nhiễm bệnh. Dịch hiện đã lan ra ít nhất 27 quốc gia và vùng lãnh thổ trên thế giới. Đến nay chỉ có 5 ca tử vong bên ngoài Trung Quốc đại lục.

Trong khi đó, nơi có nhiều ca nhiễm virus corona nhất bên ngoài Trung Quốc đại lục là du thuyền Diamond Princess neo ở cảng Yokohama, Nhật Bản với 356 ca. Kể từ khi bị phong tỏa, cách ly ở Yokohama hôm 3/2 đến nay, số ca nhiễm virus corona trên con tàu chở khoảng 3.700 người này liên tục tăng. Điều này đang đặt ra thách thức lớn với giới chức Nhật Bản.

Một số chính quyền quốc gia và vùng lãnh thổ đang lên kế hoạch sơ tán công dân khỏi Diamond Princess, trong đó có Mỹ. Theo kế hoạch, Mỹ sẽ sơ tán gần 400 công dân khỏi du thuyền này bằng máy bay từ sân bay Haneda tại Tokyo trong ngày 17/2.', CAST(N'2020-02-24T00:18:06.033' AS DateTime))
INSERT [dbo].[digital] ([id], [title], [image], [author], [shortDes], [description], [timePost]) VALUES (2, N'Trung Quốc thông báo đã bắt đầu kiểm soát được Covid-19', N'i1.jpg', N'Christoper Robin', N'Hôm 16-2, ông Mi Feng, đại diện phát ngôn của Ủy ban Y Tế Trung Quốc cho biết các biện pháp mà Trung Quốc đã thực hiện nhằm kiểm soát sự lây lan của Covid-19 đang bắt đầu có hiệu quả.', N'Hôm 16-2, ông Mi Feng, đại diện phát ngôn của Ủy ban Y Tế Trung Quốc cho biết các biện pháp mà Trung Quốc đã thực hiện nhằm kiểm soát sự lây lan của Covid-19 đang bắt đầu có hiệu quả.

Ủy ban Cải cách và Phát triển quốc gia Trung Quốc (NDRC) cho biết sẽ đầu tư 230 triệu nhân dân tệ (hơn 760 tỉ đồng) cho các bệnh viện dã chiến ở TP Vũ Hán, trung tâm bùng phát dịch bệnh Covid-19.Trong khi đó, các nhà nghiên cứu Trung Quốc đã phát triển một bộ kit xét nghiệm Covid-19 mới. Bộ kit này sẽ cho kết quả trong vòng 15 phút qua việc xét nghiệm một giọt máu của bệnh nhân, theo Phòng thí nghiệm bệnh hô hấp của Trung Quốc tiết lộ hôm 13-2.

Bộ kit xét nghiệm đã vượt qua quá trình thử nghiệm sơ bộ và đánh giá lâm sàng, đây là kết quả của đội ngũ nghiên cứu dưới sự hướng dẫn của ông Zhong Nanshan, người đứng đầu hội đồng chuyên gia do Ủy ban Y tế Trung Quốc (NHC) thành lập, để chiến đấu chống lại Covid-19.

Bộ kit xét nghiệm có thể phát hiện kháng thể IgM, đây là loại kháng thể đầu tiên do cơ thể tạo ra để chống lại với tác nhân nhiễm trùng mới thông qua xét nghiệm một giọt máu. Kết quả xét nghiệm sẽ được đưa ra trong vòng 15 phút thấm chí khi huyết tương của bệnh nhận bị pha loãng từ 500-1.000 lần.

So sánh với xét nghiệm axit nuclei RT-PCR hiện đang được dùng cho việc chẩn đoán, bộ kit xét nghiệm mới đơn giản và có hiệu quả hơn với tính đặc hiệu và nhanh nhạy hơn.

Bộ kit này có khả năng phá bỏ các hạn chế của phương pháp kiểm tra hiện tại về con người, địa điểm và rút ngắn thời gian xét nghiệm. Do đó, thiết bị có thể giúp chẩn đoán nhanh hơn các ca nghi nhiễm và sàng lọc các mối liên hệ gần với bệnh nhân nhiễm bệnh.', CAST(N'2018-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[digital] ([id], [title], [image], [author], [shortDes], [description], [timePost]) VALUES (3, N'Thêm 70 ca nhiễm virus corona trên du thuyền ở Nhật Bản', N'i1.jpg', N'Devalukke Again', N'NHK ngày 16/2 dẫn lời Bộ trưởng Y tế Nhật Bản Katsunobu Kato cho hay, có thêm 70 ca xác nhận nhiễm virus corona chủng mới được xác nhận trên du thuyền Diamond Princess.', N'NHK ngày 16/2 dẫn lời Bộ trưởng Y tế Nhật Bản Katsunobu Kato cho hay, có thêm 70 ca xác nhận nhiễm virus corona chủng mới được xác nhận trên du thuyền Diamond Princess.

Như vậy, tổng số người nhiễm virus Covid-19 trên du thuyền đang bị cách ly ngoài khơi Nhật Bản đã lên tới 355. Diamond Princess hiện thời đang là “ổ dịch” lớn nhất nằm ngoài lãnh thổ Trung Quốc đại lục.

Mỹ ngày 15/2 cho biết sẽ đưa máy bay tới Nhật Bản để sơ tán công dân từ du thuyền trên về nước. Máy bay này dự kiến sẽ rời sân bay Haneda ở Tokyo vào ngày 17/2, theo giới chức Nhật Bản.

Nhật Bản cũng sẽ hợp tác với các quốc gia khác nhằm tổ chức hoạt động sơ tán tương tự công dân trên tàu trở về nước.

Diamond Princess là tàu du lịch có 1.045 thành viên thủy thủ đoàn và 2.666 hành khách. Giới chức Nhật Bản đã yêu cầu cách ly con tàu du lịch này kể từ ngày 3/2 sau khi một hành khách từng lên tàu có phản ứng dương tính với nCoV. Theo kế hoạch, thời gian cách ly của Diamond Princess dự kiến kết thúc vào ngày 19/2. Kể từ khi bị cách ly, số ca nhiễm virus corona chủng mới trên tàu liên tục tăng.

Ban đầu, Nhật Bản dự tính cách ly toàn bộ hành khách và thủy thủ đoàn trên Diamond Princess cho tới hết thời hạn. Tuy nhiên, Nhật Bản sau đó đã đổi ý, cho phép các hành khách trên 80 tuổi và người đi cùng xuống tàu và kiểm tra xem có nhiễm virus hay không.', CAST(N'2018-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[digital] ([id], [title], [image], [author], [shortDes], [description], [timePost]) VALUES (4, N'Vĩnh Phúc vận động 192 người đã đi khỏi “tâm dịch” ', N'i1.jpg', N'Hevalukeee', N'Trao đổi với PV Dân trí chiều 16/2, ông Lê Duy Thành, Phó Chủ tịch Thường trực UBND tỉnh Vĩnh Phúc cho biết, ngay sau khi nắm bắt được thông tin 192 người ở “tâm dịch” xã Sơn Lôi (huyện Bình Xuyên) rời khỏi địa bàn trước khi xã này bị cách ly hoàn toàn, tỉnh này đã giao nhiệm vụ cho lãnh đạo phụ trách về địa phương để trực tiếp chỉ đạo.', N'Trao đổi với PV Dân trí chiều 16/2, ông Lê Duy Thành, Phó Chủ tịch Thường trực UBND tỉnh Vĩnh Phúc cho biết, ngay sau khi nắm bắt được thông tin 192 người ở “tâm dịch” xã Sơn Lôi (huyện Bình Xuyên) rời khỏi địa bàn trước khi xã này bị cách ly hoàn toàn, tỉnh này đã giao nhiệm vụ cho lãnh đạo phụ trách về địa phương để trực tiếp chỉ đạo.

Theo báo cáo ban đầu, 192 người dân nêu trên đã rời khỏi xã Sơn Lôi trước khi khu vực này bị cách ly chính thức vào ngày 13/2 vừa qua. Chính vì vậy, về mặt pháp lý, tỉnh Vĩnh Phúc không thể “bắt” mọi người quay về để cách ly.

Về phương án đối với 192 người dân nhằm phòng, chống dịch bệnh lây lan ra cộng đồng, theo ông Thành, những người này không thuộc đối tượng cách ly nên sẽ “vận động quay trở về” vì chưa thể khẳng định họ vẫn khỏe mạnh, sức khỏe bình thường hay mang mầm bệnh trong người.

Đề cập lại thông tin báo chí vừa phản ánh về việc người dân Vĩnh Phúc khi đi đến các tỉnh, thành khác bị chính quyền sở tại "giữ" hoặc tiến hành cách ly, ông Thành cho hay, việc cách ly ai, cách ly như thế nào phải tuân thủ theo đúng quy định của Luật Phòng, chống bệnh truyền nhiễm.

Cơ quan trung ương và Ban Chỉ đạo Covid-19 đã có hướng dẫn cụ thể về những nội dung này gửi về 63 tỉnh, thành, yêu cầu các địa phương phải thực hiện nghiêm túc.', CAST(N'2018-11-11T00:00:00.000' AS DateTime))
INSERT [dbo].[digital] ([id], [title], [image], [author], [shortDes], [description], [timePost]) VALUES (5, N'Ông Đinh La Thăng tiếp tục bị đề nghị truy tố vụ Ethanol', N'i1.jpg', N'Henrry Again', N'Cơ quan An ninh điều tra Bộ Công an vừa đề nghị truy tố ông Đinh La Thăng, cựu Chủ tịch HĐQT Tập đoàn Dầu khí Việt Nam (PVN) và 9 đồng phạm về tội Vi phạm quy định về đầu tư công trình xây dựng gây hậu quả nghiêm trọng, quy định tại Khoản 3 Điều 224 Bộ luật Hình sự', N'Cơ quan An ninh điều tra Bộ Công an vừa đề nghị truy tố ông Đinh La Thăng, cựu Chủ tịch HĐQT Tập đoàn Dầu khí Việt Nam (PVN) và 9 đồng phạm về tội Vi phạm quy định về đầu tư công trình xây dựng gây hậu quả nghiêm trọng, quy định tại Khoản 3 Điều 224 Bộ luật Hình sự.

Đây là vụ án xảy ra tại Công ty cổ phần Hóa dầu và Nhiên liệu sinh học Dầu khí - PVB (Ethanol Phú Thọ).

Kết quả điều tra cho thấy năm 2007, ông Đinh La Thăng thay mặt HĐQT PVN ký nghị quyết thông qua chủ trương đầu tư dự án Ethanol Phú Thọ.

Một năm sau, PVN lập Ban chỉ đạo triển khai các dự án nhiên liệu sinh học, do ông Thăng làm Trưởng ban.

Để thực hiện dự án Ethanol nói trên, PVB tiến hành mời gói thầu TK05 với nội dung: "Thiết kế, mua sắm, cung ứng vật tư thiết bị, thi công xây dựng công trình Nhà máy sản xuất Ethanol nhiên liệu sinh học phía Bắc”.', CAST(N'2018-05-09T00:00:00.000' AS DateTime))
INSERT [dbo].[digital] ([id], [title], [image], [author], [shortDes], [description], [timePost]) VALUES (6, N'“Tuyệt chiêu” khuyến khích người dân chống dịch Covid-19 ở Trung Quốc
', N'i1.jpg', N'ok boy', N'Kể từ khi bùng phát dịch bệnh Covid-19, đặc biệt là sau khi phong tỏa Vũ Hán đến nay, Trung Quốc đã thực thi hàng loạt các biện pháp nghiêm ngặt và mạnh tay đối với những trường hợp "bất tuân thượng lệnh". Nhưng cũng đã có nhiều địa phương kết hợp giữa "thưởng" và "phạt" để khuyến khích người dân thực hiện các biện pháp "đặc biệt" trong thời điểm "đặc biệt".', N'Kể từ khi bùng phát dịch bệnh Covid-19, đặc biệt là sau khi phong tỏa Vũ Hán đến nay, Trung Quốc đã thực thi hàng loạt các biện pháp nghiêm ngặt và mạnh tay đối với những trường hợp "bất tuân thượng lệnh". Nhưng cũng đã có nhiều địa phương kết hợp giữa "thưởng" và "phạt" để khuyến khích người dân thực hiện các biện pháp "đặc biệt" trong thời điểm "đặc biệt".Ở Trung Quốc, chơi mạt chược là hình thức giải trí hết sức phổ biến, đặc biệt trong những ngày nghỉ. Tuy nhiên, vì lý do dịch bệnh không được phép tụ tập đông người, nhiều nơi đã ra lệnh cấm. Trên thực tế, một số địa phương ở Trung Quốc đã xảy ra hiện tượng lây nhiễm tập thể do tụ tập chơi mạt chược. Nhưng cấm là một chuyện, nhiều người ở nhà mãi cũng chán và họ rủ nhau chơi "chui".

Mới đây, cảnh sát thành phố Hoàng Thạch, tỉnh Hồ Bắc, nơi được coi là chiến trường chính trong cuộc chiến chống dịch ở Trung Quốc, đã nghĩ ra một "tuyệt chiêu" để hạn chế tình trạng này.Theo cảnh sát quận Thiết Sơn, thành phố Hoàng Thạch, địa phương này vừa tiến hành một đợt tuyên truyền, kiểm tra đến từng hộ gia đình, khuyến khích người dân chủ động giao nộp mạt chược.

“Chiến dịch này của chúng tôi thưởng phạt phân minh. Nếu phát hiện ở đâu người dân không nộp, tập trung đông người cùng chơi, sẽ phạt nặng. Với những người chủ động giao nộp, chúng tôi sẽ cùng khu dân cư có hình thức khen thưởng, ví dụ tặng đồ dùng phòng dịch, như khẩu trang”, một cảnh sát cho biết.

Hiện cảnh sát ở đây đã thu giữ hơn 1.100 bộ mạt chược. Sau khi hết dịch sẽ trả lại người dân. Tính đến hết ngày 15/2, thành phố Hoàng Thạch đã có gần 1.000 ca nhiễm Covid-19.

Hay như ở thành phố Tế Nam, tỉnh Sơn Đông. Trước nguy cơ dịch bệnh lây lan, nhiều địa phương đã đưa ra các biện pháp hạn chế nghiêm ngặt đi lại của người dân. Mỗi người mỗi khi đi ra vào đều phải có thẻ hoặc phiếu.

Bí thư thôn Do Lý thuộc thành phố Tế Nam Lý Dương Minh nói: “Nếu trong vòng 6 ngày, gia đình không có ai ra ngoài mua bán gì, chúng tôi sẽ căn cứ vào phiếu để khen thưởng. Với một phiếu, người dân có thể ra Ủy ban thôn nhận 5kg bột mỳ. Phiếu có thể tích lại. Hai phiếu đổi được 5kg gạo. Đến giờ, số người sử dụng phiếu ít lắm. Người dân thường là kết hợp mấy gia đình cử 1 người ra ngoài mua nhu yếu phẩm”.

Được biết, mỗi hộ gia đình sẽ được phát 2 phiếu ra vào cho 1 chu kỳ 6 ngày. Mỗi lần ra ngoài dùng 1 phiếu thời gian không quá 3 tiếng. Nếu hết phiếu nhưng có việc gấp buộc phải ra ngoài, gia đình đó vẫn được đi, nhưng sẽ phải đổi lại 3 lần tham gia hoạt động tình nguyện, mỗi lần 8h, để đổi thêm 1 phiếu. Hoạt động đó có thể là trực ban phòng dịch.

Đây chỉ hai trong số nhiều biện pháp thưởng, phạt đang được áp dụng tại các địa phương ở Trung Quốc, nhằm mục đích hạn chế người dân đi lại, tụ tập, tránh nguy cơ lây lan dịch bệnh. Giờ đây, ở Trung Quốc, chỉ cần ở trong nhà cũng là "tạo phúc" cho xã hội.', CAST(N'2018-04-08T00:00:00.000' AS DateTime))
INSERT [dbo].[digital] ([id], [title], [image], [author], [shortDes], [description], [timePost]) VALUES (7, N'Một đại học của Việt Nam vào tốp 10 đại học ASEAN', N'i1.jpg', N'ádasdasd', N'4 trường đại học tiếp theo gồm: Đại học Malaya, đại học Putra Malaysia, đại học Kebangsaan Malaysia, đại học Sains Malaysia.', N'4 trường đại học tiếp theo gồm: Đại học Malaya, đại học Putra Malaysia, đại học Kebangsaan Malaysia, đại học Sains Malaysia.

Trong nhóm 10 đại học dẫn đầu này có một đại diện duy nhất của Việt Nam là Đại học Tôn Đức Thắng (TDTU), xếp thứ 7/10. Kế tiếp đến 2 đại học hàng đầu của Thái Lan (đại học Mahidol và  đại học Chulalongkorn). Đứng vị trí thứ 10 là một đại học của Malaysia, đại học kỹ thuật Malaysia.

Như vậy, tổng cộng Singapore có 2 đại học, Malaysia có 5, Việt Nam có 1 và Thái Lan có 2 đại học trong TOP 10 này.

Malaysia đã có số lượng áp đảo trong TOP 10 ASEAN về các đại học nghiên cứu mạnh (chiếm đến 50%).  Tuy nhiên, tổng số công trình trên tạp chí ISI của 5 đại học trên trong năm 2019 lại là 11.684, ít hơn tổng công trình công bố của 2 đại học Singapore (tổng công bố của 2 đại học Singapore là 12.995 công trình).

Điều đó chứng tỏ, các đại học của Singapore đã đạt đẳng cấp rất cao trong khu vực và cả trên thế giới.

Việt Nam có một đại diện duy nhất là đại học Tôn Đức Thắng (TDTU) trong TOP 10. Đây là niềm tự hào cho cả hệ thống giáo dục đại học Việt Nam.

Trong thời gian gần đây,  đặc biệt trong năm 2019, TDTU đã xác lập được vị trí  đẳng cấp khoa học trong khu vực và trên thế giới.

Trong giai đoạn 2016-2018, TDTU đã được xếp vào nhóm 25 các cơ sở nghiên cứu hàng đầu khu vực ASEAN. Đồng thời, được xếp hạng 960 trong tổng số các đại học tốt nhất thế giới theo URAP và  lọt TOP 1000 đại học tốt nhất thế giới; tốp 200 các đại học tốt nhất thế giới về phát triển bền vững theo THE năm 2019...', CAST(N'2020-02-24T02:18:06.033' AS DateTime))
SET IDENTITY_INSERT [dbo].[digital] OFF
ALTER TABLE [dbo].[digital] ADD  DEFAULT (getdate()) FOR [timePost]
GO
USE [master]
GO
ALTER DATABASE [digital] SET  READ_WRITE 
GO
