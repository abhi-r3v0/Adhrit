.class final Lcom/google/firebase/crashlytics/internal/proto/ByteString$Output;
.super Ljava/io/FilterOutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/proto/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Output"
.end annotation


# instance fields
.field private final bout:Ljava/io/ByteArrayOutputStream;


# direct methods
.method private constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 308
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 309
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString$Output;->bout:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/ByteArrayOutputStream;Lcom/google/firebase/crashlytics/internal/proto/ByteString$1;)V
    .locals 0

    .line 303
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/ByteString$Output;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method


# virtual methods
.method public final toByteString()Lcom/google/firebase/crashlytics/internal/proto/ByteString;
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString$Output;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 315
    new-instance v1, Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;-><init>([BLcom/google/firebase/crashlytics/internal/proto/ByteString$1;)V

    return-object v1
.end method
