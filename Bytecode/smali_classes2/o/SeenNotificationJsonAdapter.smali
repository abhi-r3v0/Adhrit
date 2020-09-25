.class final synthetic Lo/SeenNotificationJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/NotificationsResponse;

.field private final onMessageChannelReady:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

.field private final onNavigationEvent:Ljava/util/Map;


# direct methods
.method constructor <init>(Lo/NotificationsResponse;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SeenNotificationJsonAdapter;->extraCallback:Lo/NotificationsResponse;

    iput-object p2, p0, Lo/SeenNotificationJsonAdapter;->onMessageChannelReady:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    iput-object p3, p0, Lo/SeenNotificationJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/SeenNotificationJsonAdapter;->extraCallback:Lo/NotificationsResponse;

    iget-object v1, p0, Lo/SeenNotificationJsonAdapter;->onMessageChannelReady:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    iget-object v2, p0, Lo/SeenNotificationJsonAdapter;->onNavigationEvent:Ljava/util/Map;

    invoke-virtual {v0}, Lo/NotificationsResponse;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
