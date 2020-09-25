.class public final Lo/reverseIterator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/reverseIterator$extraCallback;,
        Lo/reverseIterator$onMessageChannelReady;,
        Lo/reverseIterator$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static synthetic asBinder:Z


# instance fields
.field public final ICustomTabsCallback:Lo/reverseIterator$ICustomTabsCallback;

.field private ICustomTabsCallback$Stub:Z

.field private asInterface:Z

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Lo/reverseIterator$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/reverseIterator$onMessageChannelReady<",
            "TReqT;>;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lo/reverseIterator$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/reverseIterator$onMessageChannelReady<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public final onPostMessage:Ljava/lang/String;

.field public final onRelationshipValidationResult:Z

.field private onTransact:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lo/reverseIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/reverseIterator;->asBinder:Z

    return-void
.end method

.method private constructor <init>(Lo/reverseIterator$ICustomTabsCallback;Ljava/lang/String;Lo/reverseIterator$onMessageChannelReady;Lo/reverseIterator$onMessageChannelReady;Ljava/lang/Object;ZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/reverseIterator$ICustomTabsCallback;",
            "Ljava/lang/String;",
            "Lo/reverseIterator$onMessageChannelReady<",
            "TReqT;>;",
            "Lo/reverseIterator$onMessageChannelReady<",
            "TRespT;>;",
            "Ljava/lang/Object;",
            "ZZZ)V"
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 226
    sget-boolean v0, Lo/reverseIterator;->asBinder:Z

    if-nez v0, :cond_1

    if-eqz p7, :cond_1

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "safe should imply idempotent"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_7

    .line 227
    check-cast p1, Lo/reverseIterator$ICustomTabsCallback;

    iput-object p1, p0, Lo/reverseIterator;->ICustomTabsCallback:Lo/reverseIterator$ICustomTabsCallback;

    const-string p1, "fullMethodName"

    if-eqz p2, :cond_6

    .line 228
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/reverseIterator;->extraCallback:Ljava/lang/String;

    if-eqz p2, :cond_5

    const/16 p1, 0x2f

    .line 3396
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 3400
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 229
    :goto_1
    iput-object p1, p0, Lo/reverseIterator;->onPostMessage:Ljava/lang/String;

    if-eqz p3, :cond_4

    .line 230
    check-cast p3, Lo/reverseIterator$onMessageChannelReady;

    iput-object p3, p0, Lo/reverseIterator;->onMessageChannelReady:Lo/reverseIterator$onMessageChannelReady;

    if-eqz p4, :cond_3

    .line 231
    check-cast p4, Lo/reverseIterator$onMessageChannelReady;

    iput-object p4, p0, Lo/reverseIterator;->onNavigationEvent:Lo/reverseIterator$onMessageChannelReady;

    .line 232
    iput-object p5, p0, Lo/reverseIterator;->onTransact:Ljava/lang/Object;

    .line 233
    iput-boolean p6, p0, Lo/reverseIterator;->ICustomTabsCallback$Stub:Z

    .line 234
    iput-boolean p7, p0, Lo/reverseIterator;->onRelationshipValidationResult:Z

    .line 235
    iput-boolean p8, p0, Lo/reverseIterator;->asInterface:Z

    return-void

    .line 5910
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "responseMarshaller"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4910
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestMarshaller"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3910
    :cond_5
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2910
    :cond_6
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1910
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lo/reverseIterator$ICustomTabsCallback;Ljava/lang/String;Lo/reverseIterator$onMessageChannelReady;Lo/reverseIterator$onMessageChannelReady;Ljava/lang/Object;ZZZB)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p8}, Lo/reverseIterator;-><init>(Lo/reverseIterator$ICustomTabsCallback;Ljava/lang/String;Lo/reverseIterator$onMessageChannelReady;Lo/reverseIterator$onMessageChannelReady;Ljava/lang/Object;ZZZ)V

    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 384
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7910
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "methodName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6910
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "fullServiceName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onPostMessage()Lo/reverseIterator$extraCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/reverseIterator$extraCallback<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 8421
    new-instance v0, Lo/reverseIterator$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/reverseIterator$extraCallback;-><init>(B)V

    const/4 v1, 0x0

    .line 8480
    iput-object v1, v0, Lo/reverseIterator$extraCallback;->onPostMessage:Lo/reverseIterator$onMessageChannelReady;

    .line 8491
    iput-object v1, v0, Lo/reverseIterator$extraCallback;->onNavigationEvent:Lo/reverseIterator$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 9105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 594
    iget-object v1, p0, Lo/reverseIterator;->extraCallback:Ljava/lang/String;

    const-string v2, "fullMethodName"

    .line 595
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/reverseIterator;->ICustomTabsCallback:Lo/reverseIterator$ICustomTabsCallback;

    const-string v2, "type"

    .line 596
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-boolean v1, p0, Lo/reverseIterator;->ICustomTabsCallback$Stub:Z

    const-string v2, "idempotent"

    .line 597
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->onMessageChannelReady(Ljava/lang/String;Z)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-boolean v1, p0, Lo/reverseIterator;->onRelationshipValidationResult:Z

    const-string v2, "safe"

    .line 598
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->onMessageChannelReady(Ljava/lang/String;Z)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-boolean v1, p0, Lo/reverseIterator;->asInterface:Z

    const-string v2, "sampledToLocalTracing"

    .line 599
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->onMessageChannelReady(Ljava/lang/String;Z)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/reverseIterator;->onMessageChannelReady:Lo/reverseIterator$onMessageChannelReady;

    const-string v2, "requestMarshaller"

    .line 600
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/reverseIterator;->onNavigationEvent:Lo/reverseIterator$onMessageChannelReady;

    const-string v2, "responseMarshaller"

    .line 601
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/reverseIterator;->onTransact:Ljava/lang/Object;

    const-string v2, "schemaDescriptor"

    .line 602
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    const/4 v1, 0x1

    .line 9160
    iput-boolean v1, v0, Lo/buildAppRequest$onPostMessage;->onNavigationEvent:Z

    .line 604
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
