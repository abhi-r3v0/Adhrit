.class public final Lo/SubProvider;
.super Lo/SuggestedAmount;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/SuggestedAmount<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lo/SuggestedAmount;-><init>()V

    iput-object p1, p0, Lo/SubProvider;->ICustomTabsCallback:Ljava/lang/Object;

    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/Object;)Lo/SubProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lo/SubProvider<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lo/SubProvider;

    invoke-direct {v0, p0}, Lo/SubProvider;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 1

    iget-object v0, p0, Lo/SubProvider;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
