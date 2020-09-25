.class public final Lo/setUiTheme;
.super Lo/IncentiveJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final onPostMessage:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/setCardTypeIv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/setCardTypeIv;)V
    .locals 1

    invoke-direct {p0}, Lo/IncentiveJsonAdapter;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/setUiTheme;->onPostMessage:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/setOnCtaClick;)V
    .locals 1

    iget-object v0, p0, Lo/setUiTheme;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setCardTypeIv;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/setCardTypeIv;->onPostMessage(Lo/setOnCtaClick;)V

    :cond_0
    return-void
.end method
