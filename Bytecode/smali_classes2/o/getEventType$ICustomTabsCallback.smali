.class public final Lo/getEventType$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getEventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/isCompleteForChild;

.field ICustomTabsCallback$Stub:Ljava/lang/String;

.field ICustomTabsCallback$Stub$Proxy:I

.field asBinder:Ljava/util/Date;

.field asInterface:J

.field extraCallback:Ljava/lang/String;

.field getInterfaceDescriptor:Ljava/lang/String;

.field onMessageChannelReady:Ljava/util/Date;

.field final onNavigationEvent:Lo/childAddedChange;

.field final onPostMessage:J

.field onRelationshipValidationResult:Ljava/util/Date;

.field onTransact:J


# direct methods
.method public constructor <init>(JLo/isCompleteForChild;Lo/childAddedChange;)V
    .locals 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:I

    .line 141
    iput-wide p1, p0, Lo/getEventType$ICustomTabsCallback;->onPostMessage:J

    .line 142
    iput-object p3, p0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback:Lo/isCompleteForChild;

    .line 143
    iput-object p4, p0, Lo/getEventType$ICustomTabsCallback;->onNavigationEvent:Lo/childAddedChange;

    if-eqz p4, :cond_5

    .line 1265
    iget-wide p1, p4, Lo/childAddedChange;->newSession:J

    .line 146
    iput-wide p1, p0, Lo/getEventType$ICustomTabsCallback;->onTransact:J

    .line 1274
    iget-wide p1, p4, Lo/childAddedChange;->getInterfaceDescriptor:J

    .line 147
    iput-wide p1, p0, Lo/getEventType$ICustomTabsCallback;->asInterface:J

    .line 2136
    iget-object p1, p4, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    const/4 p2, 0x0

    .line 3077
    iget-object p3, p1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    array-length p3, p3

    div-int/lit8 p3, p3, 0x2

    :goto_0
    if-ge p2, p3, :cond_5

    .line 3082
    iget-object p4, p1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    shl-int/lit8 v1, p2, 0x1

    aget-object p4, p4, v1

    .line 3087
    iget-object v2, p1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    aget-object v1, v2, v1

    const-string v2, "Date"

    .line 152
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-static {v1}, Lo/hasEnd;->onMessageChannelReady(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lo/getEventType$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/Date;

    .line 154
    iput-object v1, p0, Lo/getEventType$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v2, "Expires"

    .line 155
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    invoke-static {v1}, Lo/hasEnd;->onMessageChannelReady(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lo/getEventType$ICustomTabsCallback;->asBinder:Ljava/util/Date;

    goto :goto_1

    :cond_1
    const-string v2, "Last-Modified"

    .line 157
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    invoke-static {v1}, Lo/hasEnd;->onMessageChannelReady(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lo/getEventType$ICustomTabsCallback;->onRelationshipValidationResult:Ljava/util/Date;

    .line 159
    iput-object v1, p0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback$Stub:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "ETag"

    .line 160
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 161
    iput-object v1, p0, Lo/getEventType$ICustomTabsCallback;->getInterfaceDescriptor:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "Age"

    .line 162
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 163
    invoke-static {v1, v0}, Lo/hasAnchoredLimit;->onPostMessage(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:I

    :cond_4
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
