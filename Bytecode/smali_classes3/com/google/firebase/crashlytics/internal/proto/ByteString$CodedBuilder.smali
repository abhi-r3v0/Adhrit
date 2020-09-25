.class final Lcom/google/firebase/crashlytics/internal/proto/ByteString$CodedBuilder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/proto/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CodedBuilder"
.end annotation


# instance fields
.field private final buffer:[B

.field private final output:Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString$CodedBuilder;->buffer:[B

    .line 341
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->newInstance([B)Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString$CodedBuilder;->output:Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/firebase/crashlytics/internal/proto/ByteString$1;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/ByteString$CodedBuilder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/firebase/crashlytics/internal/proto/ByteString;
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString$CodedBuilder;->output:Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->checkNoSpaceLeft()V

    .line 350
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString$CodedBuilder;->buffer:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;-><init>([BLcom/google/firebase/crashlytics/internal/proto/ByteString$1;)V

    return-object v0
.end method

.method public final getCodedOutput()Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ByteString$CodedBuilder;->output:Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;

    return-object v0
.end method
