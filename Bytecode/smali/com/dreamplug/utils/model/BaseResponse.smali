.class public Lcom/dreamplug/utils/model/BaseResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0017\u0018\u00002\u00020\u0001BM\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0016\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "",
        "message",
        "",
        "header",
        "error_code",
        "code",
        "status_code",
        "information",
        "Lcom/dreamplug/utils/model/Information;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/utils/model/Information;)V",
        "getCode",
        "()Ljava/lang/String;",
        "getError_code",
        "getHeader",
        "getInformation",
        "()Lcom/dreamplug/utils/model/Information;",
        "getMessage",
        "getStatus_code",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public error_code:Ljava/lang/String;

.field public header:Ljava/lang/String;

.field public information:Lcom/dreamplug/utils/model/Information;

.field public message:Ljava/lang/String;

.field public status_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/dreamplug/utils/model/BaseResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/utils/model/Information;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/utils/model/Information;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "error_code"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "code"
        .end annotation
    .end param

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/utils/model/BaseResponse;->message:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/utils/model/BaseResponse;->header:Ljava/lang/String;

    iput-object p3, p0, Lcom/dreamplug/utils/model/BaseResponse;->error_code:Ljava/lang/String;

    iput-object p4, p0, Lcom/dreamplug/utils/model/BaseResponse;->code:Ljava/lang/String;

    iput-object p5, p0, Lcom/dreamplug/utils/model/BaseResponse;->status_code:Ljava/lang/String;

    iput-object p6, p0, Lcom/dreamplug/utils/model/BaseResponse;->information:Lcom/dreamplug/utils/model/Information;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/utils/model/Information;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p8, v0

    goto :goto_0

    :cond_0
    move-object p8, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    move-object v4, v0

    goto :goto_4

    :cond_4
    move-object v4, p5

    :goto_4
    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    move-object p7, v0

    goto :goto_5

    :cond_5
    move-object p7, p6

    :goto_5
    move-object p1, p0

    move-object p2, p8

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    .line 18
    invoke-direct/range {p1 .. p7}, Lcom/dreamplug/utils/model/BaseResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/utils/model/Information;)V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/dreamplug/utils/model/BaseResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getError_code()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/dreamplug/utils/model/BaseResponse;->error_code:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/dreamplug/utils/model/BaseResponse;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getInformation()Lcom/dreamplug/utils/model/Information;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/dreamplug/utils/model/BaseResponse;->information:Lcom/dreamplug/utils/model/Information;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/dreamplug/utils/model/BaseResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus_code()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/dreamplug/utils/model/BaseResponse;->status_code:Ljava/lang/String;

    return-object v0
.end method
