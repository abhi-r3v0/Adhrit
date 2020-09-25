.class final synthetic Lo/BadgeNotificationsResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/Badges;

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/Badges;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/BadgeNotificationsResponseJsonAdapter;->extraCallback:Lo/Badges;

    iput-object p2, p0, Lo/BadgeNotificationsResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/BadgeNotificationsResponseJsonAdapter;->extraCallback:Lo/Badges;

    iget-object v1, p0, Lo/BadgeNotificationsResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/Badges;->onTransact(Ljava/lang/String;)V

    return-void
.end method
