.class final Lo/BottomBarItemJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/SuggestedAmountJsonAdapter;


# instance fields
.field private final synthetic extraCallback:Lo/SuggestedAmount;

.field private final synthetic onPostMessage:Lo/applyTo;


# direct methods
.method constructor <init>(Lo/setMutableMap;Lo/SuggestedAmount;Lo/applyTo;)V
    .locals 0

    iput-object p2, p0, Lo/BottomBarItemJsonAdapter;->extraCallback:Lo/SuggestedAmount;

    iput-object p3, p0, Lo/BottomBarItemJsonAdapter;->onPostMessage:Lo/applyTo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    iget-object v0, p0, Lo/BottomBarItemJsonAdapter;->extraCallback:Lo/SuggestedAmount;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzwe;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzwe;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/SuggestedAmount;->onMessageChannelReady(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lo/BottomBarItemJsonAdapter;->onPostMessage:Lo/applyTo;

    invoke-virtual {v0}, Lo/applyTo;->extraCallback()V

    return-void
.end method
