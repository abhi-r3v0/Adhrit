.class final Lo/BillerJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/SuggestedAmountJsonAdapter;


# instance fields
.field private final synthetic onPostMessage:Lo/applyTo;


# direct methods
.method constructor <init>(Lo/applyTo;)V
    .locals 0

    iput-object p1, p0, Lo/BillerJsonAdapter;->onPostMessage:Lo/applyTo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    iget-object v0, p0, Lo/BillerJsonAdapter;->onPostMessage:Lo/applyTo;

    invoke-static {v0}, Lo/applyTo;->extraCallback(Lo/applyTo;)Lo/updateRangeInNode;

    move-result-object v0

    invoke-virtual {v0}, Lo/updateRangeInNode;->onNavigationEvent()V

    return-void
.end method
