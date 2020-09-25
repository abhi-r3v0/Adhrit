.class final Lo/getIndexEndName$ICustomTabsCallback;
.super Lo/getEndPost;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getIndexEndName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private onPostMessage:J


# direct methods
.method constructor <init>(Lo/exceptionStacktrace;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lo/getEndPost;-><init>(Lo/exceptionStacktrace;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/updatePriority;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-super {p0, p1, p2, p3}, Lo/getEndPost;->onPostMessage(Lo/updatePriority;J)V

    .line 150
    iget-wide v0, p0, Lo/getIndexEndName$ICustomTabsCallback;->onPostMessage:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lo/getIndexEndName$ICustomTabsCallback;->onPostMessage:J

    return-void
.end method
