.class final Lo/deserializeToClass$extraCallback$4;
.super Lo/getStartPost;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/deserializeToClass$extraCallback;-><init>(Lo/getPrevName$extraCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getPrevName$extraCallback;


# direct methods
.method constructor <init>(Lo/toLog;Lo/getPrevName$extraCallback;)V
    .locals 0

    .line 750
    iput-object p2, p0, Lo/deserializeToClass$extraCallback$4;->extraCallback:Lo/getPrevName$extraCallback;

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

    .line 752
    iget-object v0, p0, Lo/deserializeToClass$extraCallback$4;->extraCallback:Lo/getPrevName$extraCallback;

    invoke-virtual {v0}, Lo/getPrevName$extraCallback;->close()V

    .line 753
    invoke-super {p0}, Lo/getStartPost;->close()V

    return-void
.end method
