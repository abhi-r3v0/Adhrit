.class public final Lo/DecryptionException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/DrmSession$DrmSessionException;",
        ">;"
    }
.end annotation


# static fields
.field private static onPostMessage:Lo/DecryptionException;


# instance fields
.field private final onMessageChannelReady:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/DrmSession$DrmSessionException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/DecryptionException;

    invoke-direct {v0}, Lo/DecryptionException;-><init>()V

    sput-object v0, Lo/DecryptionException;->onPostMessage:Lo/DecryptionException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    new-instance v0, Lo/UnsupportedDrmException;

    invoke-direct {v0}, Lo/UnsupportedDrmException;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/DecryptionException;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/DrmSession$DrmSessionException;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/DecryptionException;->onMessageChannelReady:Lo/onPostExecute;

    return-void
.end method

.method public static ICustomTabsCallback()Z
    .locals 1

    .line 4
    sget-object v0, Lo/DecryptionException;->onPostMessage:Lo/DecryptionException;

    invoke-virtual {v0}, Lo/DecryptionException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DrmSession$DrmSessionException;

    invoke-interface {v0}, Lo/DrmSession$DrmSessionException;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method

.method public static onMessageChannelReady()Z
    .locals 1

    .line 3
    sget-object v0, Lo/DecryptionException;->onPostMessage:Lo/DecryptionException;

    invoke-virtual {v0}, Lo/DecryptionException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DrmSession$DrmSessionException;

    invoke-interface {v0}, Lo/DrmSession$DrmSessionException;->onNavigationEvent()Z

    move-result v0

    return v0
.end method

.method public static onNavigationEvent()Z
    .locals 1

    .line 2
    sget-object v0, Lo/DecryptionException;->onPostMessage:Lo/DecryptionException;

    invoke-virtual {v0}, Lo/DecryptionException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DrmSession$DrmSessionException;

    invoke-interface {v0}, Lo/DrmSession$DrmSessionException;->extraCallback()Z

    move-result v0

    return v0
.end method

.method public static onPostMessage()Z
    .locals 1

    .line 1
    sget-object v0, Lo/DecryptionException;->onPostMessage:Lo/DecryptionException;

    invoke-virtual {v0}, Lo/DecryptionException;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DrmSession$DrmSessionException;

    invoke-interface {v0}, Lo/DrmSession$DrmSessionException;->ICustomTabsCallback()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/DecryptionException;->onMessageChannelReady:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DrmSession$DrmSessionException;

    return-object v0
.end method
