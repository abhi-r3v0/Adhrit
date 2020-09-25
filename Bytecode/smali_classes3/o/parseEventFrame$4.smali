.class final Lo/parseEventFrame$4;
.super Lo/getLargeIcon;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/parseEventFrame;-><init>(Landroid/content/Context;Lo/parseEventSignal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/parseEventFrame;


# direct methods
.method constructor <init>(Lo/parseEventFrame;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/parseEventFrame$4;->this$0:Lo/parseEventFrame;

    invoke-direct {p0, p2}, Lo/getLargeIcon;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lo/parseEventFrame$4;->this$0:Lo/parseEventFrame;

    invoke-static {v0, p1}, Lo/parseEventFrame;->access$000(Lo/parseEventFrame;Landroid/os/Message;)V

    return-void
.end method
