.class public final Lo/DeepLinkUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostExecute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onPostExecute<",
        "Lo/MediaSeekBar$1$2;",
        ">;"
    }
.end annotation


# static fields
.field private static extraCallback:Lo/DeepLinkUtils;


# instance fields
.field private final ICustomTabsCallback:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/MediaSeekBar$1$2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lo/DeepLinkUtils;

    invoke-direct {v0}, Lo/DeepLinkUtils;-><init>()V

    sput-object v0, Lo/DeepLinkUtils;->extraCallback:Lo/DeepLinkUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lo/AbstractAdViewAdapter;

    invoke-direct {v0}, Lo/AbstractAdViewAdapter;-><init>()V

    invoke-static {v0}, Lo/dW;->extraCallback(Ljava/lang/Object;)Lo/onPostExecute;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/DeepLinkUtils;-><init>(Lo/onPostExecute;)V

    return-void
.end method

.method private constructor <init>(Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onPostExecute<",
            "Lo/MediaSeekBar$1$2;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lo/dW;->onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;

    move-result-object p1

    iput-object p1, p0, Lo/DeepLinkUtils;->ICustomTabsCallback:Lo/onPostExecute;

    return-void
.end method

.method public static onNavigationEvent()Z
    .locals 1

    .line 1
    sget-object v0, Lo/DeepLinkUtils;->extraCallback:Lo/DeepLinkUtils;

    invoke-virtual {v0}, Lo/DeepLinkUtils;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaSeekBar$1$2;

    invoke-interface {v0}, Lo/MediaSeekBar$1$2;->onNavigationEvent()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic extraCallback()Ljava/lang/Object;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/DeepLinkUtils;->ICustomTabsCallback:Lo/onPostExecute;

    invoke-interface {v0}, Lo/onPostExecute;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaSeekBar$1$2;

    return-object v0
.end method
