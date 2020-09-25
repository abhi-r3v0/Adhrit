.class final synthetic Lo/Notification;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Lo/Badges;


# direct methods
.method constructor <init>(Lo/Badges;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Notification;->onMessageChannelReady:Lo/Badges;

    iput-object p2, p0, Lo/Notification;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/Notification;->onMessageChannelReady:Lo/Badges;

    iget-object v1, p0, Lo/Notification;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/Badges;->asInterface(Ljava/lang/String;)V

    return-void
.end method
