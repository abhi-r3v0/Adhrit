.class final Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReport$Session$User$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;Lo/setCores;Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;


# direct methods
.method constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$2;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose(Lo/emptyMap;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$2;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->access$600(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/emptyMap;)V

    return-void
.end method

.method public final onHandshakeComplete()V
    .locals 1

    .line 195
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$2;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->access$400(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;)V

    return-void
.end method

.method public final onOpen()V
    .locals 1

    .line 190
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$2;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->access$300(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;)Lo/CrashlyticsReport$Session$User;

    move-result-object v0

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$User;->writeHandshake()V

    return-void
.end method

.method public final onWriteResponse(Lo/withNdkPayload;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/withNdkPayload;",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload$Builder;",
            ">;)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$2;->this$0:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-static {v0, p1, p2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->access$500(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/withNdkPayload;Ljava/util/List;)V

    return-void
.end method
