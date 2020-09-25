.class final Lo/computeFixed64Size$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/computeDoubleSizeNoTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeFixed64Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/computeDoubleSizeNoTag<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/computeSInt64Size;

.field private synthetic extraCallback:Ljava/lang/Class;

.field private synthetic onMessageChannelReady:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lo/computeFixed64Size$7;->extraCallback:Ljava/lang/Class;

    iput-object p2, p0, Lo/computeFixed64Size$7;->onMessageChannelReady:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-static {}, Lo/computeSInt64Size;->onPostMessage()Lo/computeSInt64Size;

    move-result-object p1

    iput-object p1, p0, Lo/computeFixed64Size$7;->ICustomTabsCallback:Lo/computeSInt64Size;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 225
    :try_start_0
    iget-object v0, p0, Lo/computeFixed64Size$7;->ICustomTabsCallback:Lo/computeSInt64Size;

    iget-object v1, p0, Lo/computeFixed64Size$7;->extraCallback:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lo/computeSInt64Size;->onNavigationEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 228
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to invoke no-args constructor for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/computeFixed64Size$7;->onMessageChannelReady:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Registering an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
