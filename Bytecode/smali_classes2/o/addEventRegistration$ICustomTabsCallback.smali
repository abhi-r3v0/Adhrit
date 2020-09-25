.class final Lo/addEventRegistration$ICustomTabsCallback;
.super Lo/getStartPost;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/addEventRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/addEventRegistration;


# direct methods
.method public constructor <init>(Lo/addEventRegistration;Lo/toLog;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lo/addEventRegistration$ICustomTabsCallback;->ICustomTabsCallback:Lo/addEventRegistration;

    .line 288
    invoke-direct {p0, p2}, Lo/getStartPost;-><init>(Lo/toLog;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lo/addEventRegistration$ICustomTabsCallback;->ICustomTabsCallback:Lo/addEventRegistration;

    invoke-static {v0}, Lo/addEventRegistration;->ICustomTabsCallback(Lo/addEventRegistration;)Lo/setLogger$extraCallback$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/addEventRegistration$ICustomTabsCallback;->ICustomTabsCallback:Lo/addEventRegistration;

    invoke-virtual {v0, v1}, Lo/setLogger$extraCallback$extraCallback;->ICustomTabsCallback(Lo/addChildEventListener;)V

    .line 293
    invoke-super {p0}, Lo/getStartPost;->close()V

    return-void
.end method
