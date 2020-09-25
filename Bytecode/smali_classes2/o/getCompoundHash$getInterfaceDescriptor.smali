.class final Lo/getCompoundHash$getInterfaceDescriptor;
.super Lo/getConnectionUrl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "getInterfaceDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getConnectionUrl<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getCompoundHash;


# direct methods
.method private constructor <init>(Lo/getCompoundHash;)V
    .locals 0

    .line 1764
    iput-object p1, p0, Lo/getCompoundHash$getInterfaceDescriptor;->onPostMessage:Lo/getCompoundHash;

    invoke-direct {p0}, Lo/getConnectionUrl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/getCompoundHash;B)V
    .locals 0

    .line 1764
    invoke-direct {p0, p1}, Lo/getCompoundHash$getInterfaceDescriptor;-><init>(Lo/getCompoundHash;)V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback()V
    .locals 1

    .line 1767
    iget-object v0, p0, Lo/getCompoundHash$getInterfaceDescriptor;->onPostMessage:Lo/getCompoundHash;

    invoke-virtual {v0}, Lo/getCompoundHash;->asInterface()V

    return-void
.end method

.method protected final onMessageChannelReady()V
    .locals 1

    .line 1772
    iget-object v0, p0, Lo/getCompoundHash$getInterfaceDescriptor;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->ICustomTabsCallback$Stub(Lo/getCompoundHash;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1775
    :cond_0
    iget-object v0, p0, Lo/getCompoundHash$getInterfaceDescriptor;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->getSessionToken(Lo/getCompoundHash;)V

    return-void
.end method
