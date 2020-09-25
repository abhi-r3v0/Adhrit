.class final synthetic Lo/ControlStatementRepo$TransactionItem$$Parcelable;
.super Ljava/lang/Object;

# interfaces
.implements Lo/DataList;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Ljava/util/Map;

.field private final onNavigationEvent:[B

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ControlStatementRepo$TransactionItem$$Parcelable;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/ControlStatementRepo$TransactionItem$$Parcelable;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/ControlStatementRepo$TransactionItem$$Parcelable;->onMessageChannelReady:Ljava/util/Map;

    iput-object p4, p0, Lo/ControlStatementRepo$TransactionItem$$Parcelable;->onNavigationEvent:[B

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/util/JsonWriter;)V
    .locals 4

    iget-object v0, p0, Lo/ControlStatementRepo$TransactionItem$$Parcelable;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p0, Lo/ControlStatementRepo$TransactionItem$$Parcelable;->onPostMessage:Ljava/lang/String;

    iget-object v2, p0, Lo/ControlStatementRepo$TransactionItem$$Parcelable;->onMessageChannelReady:Ljava/util/Map;

    iget-object v3, p0, Lo/ControlStatementRepo$TransactionItem$$Parcelable;->onNavigationEvent:[B

    invoke-static {v0, v1, v2, v3, p1}, Lo/getCurrencyType;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLandroid/util/JsonWriter;)V

    return-void
.end method
