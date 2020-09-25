.class final Lo/setUncaughtExceptionHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Supported$$Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/Supported$$Parcelable<",
        "Lo/PlutusOrderJsonAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/Object;

.field private final synthetic onMessageChannelReady:Lo/setMutableMap;

.field private final synthetic onNavigationEvent:Lo/applyTo;

.field private final synthetic onPostMessage:Lo/SuggestedAmount;


# direct methods
.method constructor <init>(Lo/setMutableMap;Lo/applyTo;Ljava/lang/Object;Lo/SuggestedAmount;)V
    .locals 0

    iput-object p1, p0, Lo/setUncaughtExceptionHandler;->onMessageChannelReady:Lo/setMutableMap;

    iput-object p2, p0, Lo/setUncaughtExceptionHandler;->onNavigationEvent:Lo/applyTo;

    iput-object p3, p0, Lo/setUncaughtExceptionHandler;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object p4, p0, Lo/setUncaughtExceptionHandler;->onPostMessage:Lo/SuggestedAmount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lo/PlutusOrderJsonAdapter;

    iget-object v0, p0, Lo/setUncaughtExceptionHandler;->onMessageChannelReady:Lo/setMutableMap;

    iget-object v1, p0, Lo/setUncaughtExceptionHandler;->onNavigationEvent:Lo/applyTo;

    iget-object v2, p0, Lo/setUncaughtExceptionHandler;->ICustomTabsCallback:Ljava/lang/Object;

    iget-object v3, p0, Lo/setUncaughtExceptionHandler;->onPostMessage:Lo/SuggestedAmount;

    invoke-static {v0, v1, p1, v2, v3}, Lo/setMutableMap;->onPostMessage(Lo/setMutableMap;Lo/applyTo;Lo/PlutusOrderJsonAdapter;Ljava/lang/Object;Lo/SuggestedAmount;)V

    return-void
.end method
