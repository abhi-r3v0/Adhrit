.class final Lo/Meta$$Parcelable;
.super Ljava/lang/Object;


# instance fields
.field ICustomTabsCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

.field extraCallback:J

.field onMessageChannelReady:Lo/setLastItem;

.field onNavigationEvent:Lo/setBackgroundImage;

.field onPostMessage:Z

.field private final synthetic onRelationshipValidationResult:Lo/NBACard;

.field onTransact:Z


# direct methods
.method constructor <init>(Lo/NBACard;Lo/setHeaderImage;)V
    .locals 1

    iput-object p1, p0, Lo/Meta$$Parcelable;->onRelationshipValidationResult:Lo/NBACard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lo/NBACard;->onNavigationEvent(Lo/NBACard;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/setHeaderImage;->onPostMessage(Ljava/lang/String;)Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    move-result-object p1

    iput-object p1, p0, Lo/Meta$$Parcelable;->ICustomTabsCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    new-instance p1, Lo/setBackgroundImage;

    invoke-direct {p1}, Lo/setBackgroundImage;-><init>()V

    iput-object p1, p0, Lo/Meta$$Parcelable;->onNavigationEvent:Lo/setBackgroundImage;

    iget-object p2, p0, Lo/Meta$$Parcelable;->ICustomTabsCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    new-instance v0, Lo/setBodyText2;

    invoke-direct {v0, p1}, Lo/setBodyText2;-><init>(Lo/setBackgroundImage;)V

    invoke-virtual {p2, v0}, Lo/DeviceAttrResponse;->onPostMessage(Lo/PendingUsers;)V

    new-instance v0, Lo/Card;

    invoke-direct {v0, p1}, Lo/Card;-><init>(Lo/setBackgroundImage;)V

    invoke-virtual {p2, v0}, Lo/DeviceAttrResponse;->extraCallback(Lo/StatisticsItemJsonAdapter;)V

    new-instance v0, Lo/CardJsonAdapter;

    invoke-direct {v0, p1}, Lo/CardJsonAdapter;-><init>(Lo/setBackgroundImage;)V

    invoke-virtual {p2, v0}, Lo/DeviceAttrResponse;->extraCallback(Lo/setStartingAngle;)V

    new-instance v0, Lo/getIconUrl;

    invoke-direct {v0, p1}, Lo/getIconUrl;-><init>(Lo/setBackgroundImage;)V

    invoke-virtual {p2, v0}, Lo/DeviceAttrResponse;->ICustomTabsCallback(Lo/ParentEntity;)V

    new-instance v0, Lo/getBorderColor;

    invoke-direct {v0, p1}, Lo/getBorderColor;-><init>(Lo/setBackgroundImage;)V

    invoke-virtual {p2, v0}, Lo/DeviceAttrResponse;->extraCallback(Lo/CredProtectResponseJsonAdapter;)V

    return-void
.end method

.method constructor <init>(Lo/NBACard;Lo/setHeaderImage;Lo/setLastItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/Meta$$Parcelable;-><init>(Lo/NBACard;Lo/setHeaderImage;)V

    iput-object p3, p0, Lo/Meta$$Parcelable;->onMessageChannelReady:Lo/setLastItem;

    return-void
.end method


# virtual methods
.method final onNavigationEvent()Z
    .locals 3

    iget-boolean v0, p0, Lo/Meta$$Parcelable;->onPostMessage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lo/Meta$$Parcelable;->onMessageChannelReady:Lo/setLastItem;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/Meta$$Parcelable;->onRelationshipValidationResult:Lo/NBACard;

    invoke-static {v0}, Lo/NBACard;->onMessageChannelReady(Lo/NBACard;)Lo/setLastItem;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lo/NBAResponse;->ICustomTabsCallback(Lo/setLastItem;)Lo/setLastItem;

    move-result-object v0

    iget-object v1, p0, Lo/Meta$$Parcelable;->ICustomTabsCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-virtual {v1, v0}, Lo/DeviceAttrResponse;->ICustomTabsCallback(Lo/setLastItem;)Z

    move-result v0

    iput-boolean v0, p0, Lo/Meta$$Parcelable;->onTransact:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/Meta$$Parcelable;->onPostMessage:Z

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v1

    iput-wide v1, p0, Lo/Meta$$Parcelable;->extraCallback:J

    return v0
.end method
