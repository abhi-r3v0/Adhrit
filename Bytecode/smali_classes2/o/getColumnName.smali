.class public final Lo/getColumnName;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getColumnName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private ICustomTabsCallback$Stub:Ljava/lang/String;

.field private ICustomTabsService:Lo/CrashlyticsController$4;

.field private asBinder:Lo/getConversationId;

.field private asInterface:J

.field private extraCallback:Ljava/lang/String;

.field private newSession:Z

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Z

.field private onPostMessage:Ljava/lang/String;

.field private onRelationshipValidationResult:J

.field private onTransact:Ljava/lang/String;

.field private warmup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setMessages;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lo/getColumnType;

    invoke-direct {v0}, Lo/getColumnType;-><init>()V

    sput-object v0, Lo/getColumnName;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    new-instance v0, Lo/getConversationId;

    invoke-direct {v0}, Lo/getConversationId;-><init>()V

    iput-object v0, p0, Lo/getColumnName;->asBinder:Lo/getConversationId;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lo/getConversationId;Ljava/lang/String;Ljava/lang/String;JJZLo/CrashlyticsController$4;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/getConversationId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJZ",
            "Lo/CrashlyticsController$4;",
            "Ljava/util/List<",
            "Lo/setMessages;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 5
    iput-object p1, p0, Lo/getColumnName;->ICustomTabsCallback:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lo/getColumnName;->onMessageChannelReady:Ljava/lang/String;

    .line 7
    iput-boolean p3, p0, Lo/getColumnName;->onNavigationEvent:Z

    .line 8
    iput-object p4, p0, Lo/getColumnName;->onPostMessage:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lo/getColumnName;->extraCallback:Ljava/lang/String;

    if-nez p6, :cond_0

    .line 12
    new-instance p1, Lo/getConversationId;

    invoke-direct {p1}, Lo/getConversationId;-><init>()V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p6}, Lo/getConversationId;->onNavigationEvent(Lo/getConversationId;)Lo/getConversationId;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/getColumnName;->asBinder:Lo/getConversationId;

    .line 15
    iput-object p7, p0, Lo/getColumnName;->onTransact:Ljava/lang/String;

    .line 16
    iput-object p8, p0, Lo/getColumnName;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 17
    iput-wide p9, p0, Lo/getColumnName;->asInterface:J

    .line 18
    iput-wide p11, p0, Lo/getColumnName;->onRelationshipValidationResult:J

    .line 19
    iput-boolean p13, p0, Lo/getColumnName;->newSession:Z

    .line 20
    iput-object p14, p0, Lo/getColumnName;->ICustomTabsService:Lo/CrashlyticsController$4;

    if-nez p15, :cond_1

    .line 21
    invoke-static {}, Lo/setResponseTimeExpectationsFetchInterval;->onRelationshipValidationResult()Lo/setResponseTimeExpectationsFetchInterval;

    move-result-object p15

    :cond_1
    iput-object p15, p0, Lo/getColumnName;->warmup:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/getColumnName;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Conversation;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lo/getColumnName;->asBinder:Lo/getConversationId;

    invoke-virtual {v0}, Lo/getConversationId;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsService()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/setMessages;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lo/getColumnName;->warmup:Ljava/util/List;

    return-object v0
.end method

.method public final asBinder()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lo/getColumnName;->onRelationshipValidationResult:J

    return-wide v0
.end method

.method public final asInterface()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/getColumnName;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-object v0
.end method

.method public final extraCallback()Landroid/net/Uri;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/getColumnName;->extraCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lo/getColumnName;->extraCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final newSession()Lo/CrashlyticsController$4;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/getColumnName;->ICustomTabsService:Lo/CrashlyticsController$4;

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/getColumnName;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lo/getColumnName;->onNavigationEvent:Z

    return v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/getColumnName;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lo/getColumnName;->newSession:Z

    return v0
.end method

.method public final onTransact()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lo/getColumnName;->asInterface:J

    return-wide v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 56
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    .line 58
    iget-object v1, p0, Lo/getColumnName;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 60
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 62
    iget-object v1, p0, Lo/getColumnName;->onMessageChannelReady:Ljava/lang/String;

    const/4 v3, 0x3

    .line 64
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 66
    iget-boolean v1, p0, Lo/getColumnName;->onNavigationEvent:Z

    const/4 v3, 0x4

    .line 67
    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 69
    iget-object v1, p0, Lo/getColumnName;->onPostMessage:Ljava/lang/String;

    const/4 v3, 0x5

    .line 71
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 73
    iget-object v1, p0, Lo/getColumnName;->extraCallback:Ljava/lang/String;

    const/4 v3, 0x6

    .line 75
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 77
    iget-object v1, p0, Lo/getColumnName;->asBinder:Lo/getConversationId;

    const/4 v3, 0x7

    .line 79
    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 81
    iget-object v1, p0, Lo/getColumnName;->onTransact:Ljava/lang/String;

    const/16 v3, 0x8

    .line 83
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 85
    iget-object v1, p0, Lo/getColumnName;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const/16 v3, 0x9

    .line 87
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 89
    iget-wide v3, p0, Lo/getColumnName;->asInterface:J

    const/16 v1, 0xa

    .line 90
    invoke-static {p1, v1, v3, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 92
    iget-wide v3, p0, Lo/getColumnName;->onRelationshipValidationResult:J

    const/16 v1, 0xb

    .line 93
    invoke-static {p1, v1, v3, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    .line 95
    iget-boolean v1, p0, Lo/getColumnName;->newSession:Z

    const/16 v3, 0xc

    .line 96
    invoke-static {p1, v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 98
    iget-object v1, p0, Lo/getColumnName;->ICustomTabsService:Lo/CrashlyticsController$4;

    const/16 v3, 0xd

    .line 100
    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 102
    iget-object p2, p0, Lo/getColumnName;->warmup:Ljava/util/List;

    const/16 v1, 0xe

    .line 104
    invoke-static {p1, v1, p2, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 105
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
