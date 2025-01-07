### Vai trò của Entity Models trong kết nối Web API với cơ sở dữ liệu

Trong ứng dụng **.NET Core**, Entity Models đóng vai trò cầu nối giữa **Web API** và **cơ sở dữ liệu** thông qua cơ chế **Object-Relational Mapping (ORM)** của **Entity Framework Core**. Cụ thể, vai trò của chúng như sau:

1. **Đại diện cho bảng cơ sở dữ liệu**: Mỗi Entity Model tương ứng với một bảng trong cơ sở dữ liệu, các thuộc tính của model sẽ map tới các cột trong bảng.
2. **Quản lý truy vấn dữ liệu**: Entity Models cho phép lập trình viên truy vấn, cập nhật dữ liệu từ cơ sở dữ liệu thông qua **LINQ** mà không cần viết truy vấn SQL thuần túy.
3. **Tích hợp với Web API**: Khi Web API nhận request từ người dùng, nó có thể sử dụng Entity Models để tương tác với dữ liệu, xử lý và trả lại phản hồi dưới dạng JSON hoặc các định dạng khác.
4. **Migration hỗ trợ phát triển**: Entity Models giúp tạo ra các file **migration** để thay đổi hoặc tạo mới các bảng trong cơ sở dữ liệu khi có thay đổi trong các model.

### Cách tối ưu hóa Entity Models trong .NET Core

Để tối ưu hóa Entity Models trong **.NET Core**, bạn có thể áp dụng các kỹ thuật sau:

1. **Sử dụng các thuộc tính cần thiết**:
   - Tránh map các thuộc tính không cần thiết vào model. Điều này giúp giảm kích thước payload khi dữ liệu được trả về từ API.
   - Sử dụng **DTO (Data Transfer Objects)** để tách dữ liệu trả về khỏi các entity gốc.

2. **Lazy Loading và Eager Loading**:
   - Sử dụng **Lazy Loading** để chỉ tải dữ liệu liên quan khi cần thiết. Điều này giúp giảm tải khi không cần truy vấn tất cả các liên kết giữa các bảng.
   - Trong trường hợp cần tất cả dữ liệu liên quan, dùng **Eager Loading** (sử dụng `Include()`) để giảm số lượng truy vấn SQL.

3. **Indexing và Key Optimization**:
   - Đảm bảo các khóa chính và khóa ngoại trong các Entity Model được đánh dấu bằng **primary key** và **foreign key** đúng cách.
   - Sử dụng **index** trong các thuộc tính thường xuyên được truy vấn để tăng tốc độ tìm kiếm và truy xuất dữ liệu.

4. **Data Annotation và Fluent API**:
   - Sử dụng **Data Annotation** hoặc **Fluent API** để định nghĩa rõ ràng các ràng buộc (constraints), quan hệ (relationships), và quy tắc (rules) trên Entity Models.
   - Điều này giúp Entity Framework có thể tự động tối ưu hóa khi sinh ra truy vấn SQL.

5. **Caching**:
   - Sử dụng **caching** ở mức ứng dụng hoặc tầng dữ liệu để giảm thiểu số lần truy vấn dữ liệu từ cơ sở dữ liệu.
   - **Distributed cache** hoặc **in-memory cache** là các phương pháp phổ biến.

6. **Batching và Asynchronous Queries**:
   - Sử dụng **batching** khi thực hiện nhiều truy vấn cùng một lúc để giảm số lượng kết nối đến cơ sở dữ liệu.
   - Sử dụng truy vấn **async** (`await` với `ToListAsync`, `SingleAsync`, v.v.) để không làm nghẽn thread khi truy xuất dữ liệu.


### Sự khác biệt giữa Domain Models và View Models

Trong **.NET Core**, **Domain Models** và **View Models** là hai khái niệm quan trọng, nhưng chúng phục vụ các mục đích khác nhau trong kiến trúc ứng dụng:

#### 1. **Domain Models**:
   - **Mục đích**: Đại diện cho các đối tượng thực thể và logic nghiệp vụ trong ứng dụng. Chúng chứa các thuộc tính, phương thức, và quy tắc kinh doanh trực tiếp liên quan đến dữ liệu và các hành động của hệ thống.
   - **Chứa gì?**: Các thuộc tính, quan hệ giữa các thực thể (entity relationships), và logic nghiệp vụ (business logic).
   - **Liên kết với**: Domain Models thường được map trực tiếp với các bảng trong cơ sở dữ liệu thông qua ORM (ví dụ: **Entity Framework**).
   - **Sử dụng khi nào?**: Domain Models được sử dụng khi bạn cần tương tác trực tiếp với dữ liệu, như khi làm việc với cơ sở dữ liệu hoặc thực hiện các quy tắc nghiệp vụ.

#### 2. **View Models**:
   - **Mục đích**: Đại diện cho dữ liệu mà bạn cần để hiển thị trên giao diện người dùng (UI). View Models thường chỉ chứa dữ liệu được yêu cầu cho việc hiển thị và không chứa logic nghiệp vụ.
   - **Chứa gì?**: Các thuộc tính được chọn lọc từ Domain Models hoặc các nguồn dữ liệu khác, chỉ phục vụ cho việc hiển thị trên view. Không chứa các quy tắc nghiệp vụ phức tạp.
   - **Liên kết với**: View Models không được map trực tiếp với cơ sở dữ liệu. Chúng được sử dụng để truyền dữ liệu giữa controller và view.
   - **Sử dụng khi nào?**: Sử dụng View Models khi cần chuyển đổi dữ liệu từ Domain Models sang dạng phù hợp để hiển thị trong UI (ví dụ: loại bỏ những thông tin không cần thiết hoặc kết hợp dữ liệu từ nhiều nguồn).

### Khi nào nên sử dụng mỗi loại?

- **Sử dụng Domain Models**:
   - Khi bạn cần thao tác trực tiếp với dữ liệu, như thêm, sửa, xóa, hoặc cập nhật từ cơ sở dữ liệu.
   - Khi làm việc với các nghiệp vụ phức tạp, bao gồm các mối quan hệ giữa các thực thể và các quy tắc nghiệp vụ.
   - Khi xử lý các logic cốt lõi của hệ thống.

- **Sử dụng View Models**:
   - Khi bạn cần một cấu trúc dữ liệu nhẹ hơn để chuyển giao giữa controller và view.
   - Khi dữ liệu hiển thị trên giao diện người dùng cần được định dạng hoặc chuyển đổi từ nhiều nguồn khác nhau.
   - Khi bạn muốn tách biệt logic hiển thị (UI) khỏi logic nghiệp vụ, giúp ứng dụng dễ bảo trì và kiểm thử hơn.

### Ví dụ về sự khác biệt:

- **Domain Model** có thể bao gồm các thuộc tính như `Id`, `Name`, `Price`, và các mối quan hệ phức tạp như **Product** và **Category**.
- **View Model** cho cùng một đối tượng có thể chỉ chứa các thuộc tính cần thiết như `Name`, `FormattedPrice`, để hiển thị trên giao diện người dùng.

### Data Transfer Objects (DTO) trong .NET Core

**Data Transfer Objects (DTO)** là một mẫu thiết kế (design pattern) được sử dụng để cải thiện hiệu suất và bảo mật trong **Web API**. DTO giúp tách biệt các đối tượng dữ liệu dùng để truyền tải giữa client và server khỏi các thực thể (entity) hoặc model trong ứng dụng.

### Cách DTO cải thiện hiệu suất và bảo mật của Web API

#### 1. **Cải thiện hiệu suất**

- **Giảm Payload Size**:
  - DTO cho phép bạn chỉ truyền các thuộc tính cần thiết cho client, giảm kích thước payload. Điều này giúp giảm băng thông sử dụng và tăng tốc độ truyền tải dữ liệu.

- **Tối ưu hóa Truy vấn**:
  - Sử dụng DTO giúp bạn tạo các truy vấn cụ thể cho dữ liệu cần thiết mà không cần phải lấy toàn bộ dữ liệu từ cơ sở dữ liệu. Điều này làm giảm tải cho hệ thống và cải thiện hiệu suất.

- **Giảm Thời gian Xử lý**:
  - DTO giúp giảm khối lượng dữ liệu được xử lý và ánh xạ trong các lớp trung gian của ứng dụng. Điều này giúp cải thiện tốc độ xử lý và giảm thời gian phản hồi.

#### 2. **Cải thiện bảo mật**

- **Ngăn ngừa Exposing Sensitive Data**:
  - DTO cho phép bạn kiểm soát dữ liệu nào được gửi ra ngoài và dữ liệu nào được giữ lại. Bằng cách chỉ định các thuộc tính cần thiết trong DTO, bạn có thể ngăn chặn việc truyền tải thông tin nhạy cảm từ Domain Model.

- **Tách biệt Logic Nghiệp vụ và Hiển thị**:
  - DTO giúp tách biệt logic nghiệp vụ khỏi logic hiển thị, giúp bảo vệ các quy tắc nghiệp vụ và dữ liệu nhạy cảm không bị lộ ra ngoài. Điều này cũng giúp bảo trì mã nguồn dễ dàng hơn và giảm nguy cơ lỗi bảo mật.

- **Kiểm soát Quyền Truy cập**:
  - Sử dụng DTO cho phép bạn kiểm soát quyền truy cập dữ liệu dựa trên vai trò người dùng hoặc quyền hạn. Bạn có thể chỉ định các thuộc tính của DTO dựa trên quyền của người dùng.

### Tổng kết

Sử dụng DTO trong **.NET Core** giúp cải thiện hiệu suất và bảo mật của Web API bằng cách giảm kích thước payload, tối ưu hóa truy vấn, và bảo vệ thông tin nhạy cảm. DTO cũng giúp tách biệt logic nghiệp vụ và hiển thị, giúp quản lý và bảo trì ứng dụng dễ dàng hơn.

### Triển khai AutoMapper trong .NET Core

**AutoMapper** là một thư viện trong **.NET Core** giúp chuyển đổi giữa các loại models khác nhau, như Entity Models và DTOs, một cách hiệu quả. Dưới đây là hướng dẫn cơ bản để triển khai AutoMapper trong ứng dụng **.NET Core**.

### Cài đặt AutoMapper

1. **Cài đặt gói NuGet**:
   - Mở **Package Manager Console** và chạy lệnh:
     ```bash
     Install-Package AutoMapper
     ```
   - Hoặc sử dụng **.NET CLI**:
     ```bash
     dotnet add package AutoMapper
     ```

2. **Cài đặt AutoMapper.Extensions.Microsoft.DependencyInjection**:
   - Để tích hợp AutoMapper với **Dependency Injection** trong **.NET Core**, cài đặt gói này:
     ```bash
     dotnet add package AutoMapper.Extensions.Microsoft.DependencyInjection
     ```

### Cấu hình AutoMapper

1. **Tạo Profile**:
   - Tạo một lớp kế thừa từ `Profile` để cấu hình các ánh xạ (mapping) giữa các loại models.
   - Ví dụ, tạo một lớp `MappingProfile` để ánh xạ giữa `Entity` và `DTO`:
     ```csharp
     public class MappingProfile : Profile
     {
         public MappingProfile()
         {
             CreateMap<SourceEntity, DestinationDto>();
             CreateMap<DestinationDto, SourceEntity>();
         }
     }
     ```

2. **Cấu hình AutoMapper trong Startup.cs**:
   - Thêm cấu hình AutoMapper vào dịch vụ DI trong phương thức `ConfigureServices` của `Startup.cs`:
     ```csharp
     public void ConfigureServices(IServiceCollection services)
     {
         services.AddAutoMapper(typeof(MappingProfile));
         // Các dịch vụ khác
     }
     ```

### Sử dụng AutoMapper

1. **Inject IMapper vào Controller hoặc Service**:
   - Inject `IMapper` vào lớp controller hoặc service mà bạn muốn sử dụng ánh xạ:
     ```csharp
     public class MyController : ControllerBase
     {
         private readonly IMapper _mapper;

         public MyController(IMapper mapper)
         {
             _mapper = mapper;
         }

         // Sử dụng AutoMapper
     }
     ```

2. **Áp dụng ánh xạ**:
   - Sử dụng phương thức `Map` của `IMapper` để chuyển đổi giữa các loại models:
     ```csharp
     public IActionResult Get()
     {
         var entity = _context.SourceEntities.First();
         var dto = _mapper.Map<DestinationDto>(entity);
         return Ok(dto);
     }
     ```

   - Bạn cũng có thể ánh xạ ngược từ DTO về Entity:
     ```csharp
     public IActionResult Post(DestinationDto dto)
     {
         var entity = _mapper.Map<SourceEntity>(dto);
         _context.SourceEntities.Add(entity);
         _context.SaveChanges();
         return Ok();
     }
     ```

### Lợi ích của việc sử dụng AutoMapper

- **Tiết kiệm thời gian**: Tự động ánh xạ giữa các loại models mà không cần viết mã ánh xạ thủ công.
- **Giảm lỗi**: Giảm nguy cơ lỗi khi viết mã ánh xạ thủ công.
- **Dễ bảo trì**: Tách biệt logic ánh xạ khỏi các lớp business logic, giúp dễ bảo trì và mở rộng.

### Tổng kết

Triển khai AutoMapper trong **.NET Core** giúp bạn dễ dàng và hiệu quả trong việc chuyển đổi giữa các loại models khác nhau. Cài đặt, cấu hình, và sử dụng AutoMapper có thể giúp cải thiện chất lượng mã nguồn và giảm thời gian phát triển ứng dụng.
