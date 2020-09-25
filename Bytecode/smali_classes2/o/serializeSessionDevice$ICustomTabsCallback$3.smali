.class final Lo/serializeSessionDevice$ICustomTabsCallback$3;
.super Lo/getStartPost;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/serializeSessionDevice$ICustomTabsCallback;-><init>(Lo/updateChildrenInternal$onNavigationEvent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/updateChildrenInternal$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/toLog;Lo/updateChildrenInternal$onNavigationEvent;)V
    .locals 0

    .line 705
    iput-object p2, p0, Lo/serializeSessionDevice$ICustomTabsCallback$3;->extraCallback:Lo/updateChildrenInternal$onNavigationEvent;

    invoke-direct {p0, p1}, Lo/getStartPost;-><init>(Lo/toLog;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lo/serializeSessionDevice$ICustomTabsCallback$3;->extraCallback:Lo/updateChildrenInternal$onNavigationEvent;

    invoke-virtual {v0}, Lo/updateChildrenInternal$onNavigationEvent;->close()V

    .line 708
    invoke-super {p0}, Lo/getStartPost;->close()V

    return-void
.end method
