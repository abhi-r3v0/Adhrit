.class final Lo/setHintTextAppearance;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setHint;

.field private final synthetic onPostMessage:Lo/setHelperTextColor;


# direct methods
.method constructor <init>(Lo/setHint;Lo/setHelperTextColor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setHintTextAppearance;->ICustomTabsCallback:Lo/setHint;

    iput-object p2, p0, Lo/setHintTextAppearance;->onPostMessage:Lo/setHelperTextColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/setHintTextAppearance;->ICustomTabsCallback:Lo/setHint;

    iget-object v1, p0, Lo/setHintTextAppearance;->onPostMessage:Lo/setHelperTextColor;

    invoke-static {v0, v1}, Lo/setHint;->onNavigationEvent(Lo/setHint;Lo/setHelperTextColor;)V

    .line 3
    iget-object v0, p0, Lo/setHintTextAppearance;->ICustomTabsCallback:Lo/setHint;

    invoke-virtual {v0}, Lo/setHint;->extraCallback()V

    return-void
.end method
