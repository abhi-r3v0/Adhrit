.class final Lo/SwipeActions;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/SupportedJsonAdapter;

.field private final synthetic onNavigationEvent:Ljava/lang/String;

.field private final synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/SupportedJsonAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/SwipeActions;->extraCallback:Lo/SupportedJsonAdapter;

    iput-object p2, p0, Lo/SwipeActions;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/SwipeActions;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/SwipeActions;->extraCallback:Lo/SupportedJsonAdapter;

    invoke-static {v0}, Lo/SupportedJsonAdapter;->onPostMessage(Lo/SupportedJsonAdapter;)Lo/BankOfferDetailsResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/SwipeActions;->extraCallback:Lo/SupportedJsonAdapter;

    invoke-static {v0}, Lo/SupportedJsonAdapter;->onPostMessage(Lo/SupportedJsonAdapter;)Lo/BankOfferDetailsResponse;

    move-result-object v0

    iget-object v1, p0, Lo/SwipeActions;->onPostMessage:Ljava/lang/String;

    iget-object v2, p0, Lo/SwipeActions;->onNavigationEvent:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lo/BankOfferDetailsResponse;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
