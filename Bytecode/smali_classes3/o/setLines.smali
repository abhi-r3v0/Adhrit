.class final Lo/setLines;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setCheckedIcon;

.field private final synthetic onPostMessage:Lo/setChipIconSizeResource;


# direct methods
.method constructor <init>(Lo/setCheckedIcon;Lo/setChipIconSizeResource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setLines;->ICustomTabsCallback:Lo/setCheckedIcon;

    iput-object p2, p0, Lo/setLines;->onPostMessage:Lo/setChipIconSizeResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/setLines;->ICustomTabsCallback:Lo/setCheckedIcon;

    iget-object v1, p0, Lo/setLines;->onPostMessage:Lo/setChipIconSizeResource;

    invoke-static {v0, v1}, Lo/setCheckedIcon;->ICustomTabsCallback(Lo/setCheckedIcon;Lo/setChipIconSizeResource;)V

    .line 3
    iget-object v0, p0, Lo/setLines;->ICustomTabsCallback:Lo/setCheckedIcon;

    iget-object v1, p0, Lo/setLines;->onPostMessage:Lo/setChipIconSizeResource;

    iget-object v1, v1, Lo/setChipIconSizeResource;->asInterface:Lo/setStatusCode;

    invoke-virtual {v0, v1}, Lo/setCheckedIcon;->ICustomTabsCallback(Lo/setStatusCode;)V

    return-void
.end method
