.class final Lo/getCompoundHash$onPostMessage;
.super Lo/getMinKey$ICustomTabsCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCompoundHash;->extraCallback(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getMinKey$ICustomTabsCallback;

.field private synthetic onPostMessage:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 806
    iput-object p1, p0, Lo/getCompoundHash$onPostMessage;->onPostMessage:Ljava/lang/Throwable;

    invoke-direct {p0}, Lo/getMinKey$ICustomTabsCallback$Stub;-><init>()V

    .line 807
    sget-object p1, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v0, "Panic! This is a bug!"

    .line 809
    invoke-virtual {p1, v0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    iget-object v0, p0, Lo/getCompoundHash$onPostMessage;->onPostMessage:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object p1

    .line 808
    invoke-static {p1}, Lo/getMinKey$ICustomTabsCallback;->onNavigationEvent(Lo/emptyMap;)Lo/getMinKey$ICustomTabsCallback;

    move-result-object p1

    iput-object p1, p0, Lo/getCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/getMinKey$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/getMinKey$ICustomTabsCallback;
    .locals 1

    .line 813
    iget-object v0, p0, Lo/getCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/getMinKey$ICustomTabsCallback;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 818
    const-class v0, Lo/getCompoundHash$onPostMessage;

    .line 1119
    new-instance v1, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 818
    iget-object v0, p0, Lo/getCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/getMinKey$ICustomTabsCallback;

    const-string v2, "panicPickResult"

    .line 819
    invoke-virtual {v1, v2, v0}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 820
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
