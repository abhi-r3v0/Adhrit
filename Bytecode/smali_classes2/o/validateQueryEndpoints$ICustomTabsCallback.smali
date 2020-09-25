.class public final Lo/validateQueryEndpoints$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/validateQueryEndpoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:J

.field public ICustomTabsCallback$Stub:Ljava/lang/String;

.field public asBinder:Ljava/util/Date;

.field public asInterface:Ljava/util/Date;

.field public extraCallback:Ljava/util/Date;

.field public getInterfaceDescriptor:Ljava/lang/String;

.field public newSession:I

.field public final onMessageChannelReady:Lo/removeValue;

.field public onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Lo/fromException;

.field public onRelationshipValidationResult:J

.field public onTransact:J


# direct methods
.method public constructor <init>(JLo/fromException;Lo/removeValue;)V
    .locals 4

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 123
    iput v0, p0, Lo/validateQueryEndpoints$ICustomTabsCallback;->newSession:I

    .line 126
    iput-wide p1, p0, Lo/validateQueryEndpoints$ICustomTabsCallback;->ICustomTabsCallback:J

    .line 127
    iput-object p3, p0, Lo/validateQueryEndpoints$ICustomTabsCallback;->onPostMessage:Lo/fromException;

    .line 128
    iput-object p4, p0, Lo/validateQueryEndpoints$ICustomTabsCallback;->onMessageChannelReady:Lo/removeValue;

    if-eqz p4, :cond_b

    .line 1126
    iget-object p1, p4, Lo/removeValue;->asInterface:Lo/getRef;

    const/4 p2, 0x0

    .line 2076
    iget-object p3, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length p3, p3

    div-int/lit8 p3, p3, 0x2

    :goto_0
    if-ge p2, p3, :cond_b

    shl-int/lit8 p4, p2, 0x1

    const/4 v1, 0x0

    if-ltz p4, :cond_1

    .line 2082
    iget-object v2, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v2, v2

    if-lt p4, v2, :cond_0

    goto :goto_1

    .line 2085
    :cond_0
    iget-object v2, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v2, v2, p4

    goto :goto_2

    :cond_1
    :goto_1
    move-object v2, v1

    :goto_2
    add-int/lit8 p4, p4, 0x1

    if-ltz p4, :cond_3

    .line 2091
    iget-object v3, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v3, v3

    if-lt p4, v3, :cond_2

    goto :goto_3

    .line 2094
    :cond_2
    iget-object v1, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v1, v1, p4

    :cond_3
    :goto_3
    const-string p4, "Date"

    .line 135
    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 136
    invoke-static {v1}, Lo/addListenerForSingleValueEvent;->extraCallback(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lo/validateQueryEndpoints$ICustomTabsCallback;->extraCallback:Ljava/util/Date;

    .line 137
    iput-object v1, p0, Lo/validateQueryEndpoints$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const-string p4, "Expires"

    .line 138
    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 139
    invoke-static {v1}, Lo/addListenerForSingleValueEvent;->extraCallback(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lo/validateQueryEndpoints$ICustomTabsCallback;->asBinder:Ljava/util/Date;

    goto :goto_4

    :cond_5
    const-string p4, "Last-Modified"

    .line 140
    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 141
    invoke-static {v1}, Lo/addListenerForSingleValueEvent;->extraCallback(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lo/validateQueryEndpoints$ICustomTabsCallback;->asInterface:Ljava/util/Date;

    .line 142
    iput-object v1, p0, Lo/validateQueryEndpoints$ICustomTabsCallback;->ICustomTabsCallback$Stub:Ljava/lang/String;

    goto :goto_4

    :cond_6
    const-string p4, "ETag"

    .line 143
    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 144
    iput-object v1, p0, Lo/validateQueryEndpoints$ICustomTabsCallback;->getInterfaceDescriptor:Ljava/lang/String;

    goto :goto_4

    :cond_7
    const-string p4, "Age"

    .line 145
    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 146
    invoke-static {v1, v0}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lo/validateQueryEndpoints$ICustomTabsCallback;->newSession:I

    goto :goto_4

    .line 147
    :cond_8
    sget-object p4, Lo/removeEventRegistration;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 148
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lo/validateQueryEndpoints$ICustomTabsCallback;->onTransact:J

    goto :goto_4

    .line 149
    :cond_9
    sget-object p4, Lo/removeEventRegistration;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 150
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lo/validateQueryEndpoints$ICustomTabsCallback;->onRelationshipValidationResult:J

    :cond_a
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public static extraCallback(Lo/fromException;)Z
    .locals 2

    .line 3078
    iget-object v0, p0, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    .line 4061
    iget-object v0, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    const-string v1, "If-Modified-Since"

    invoke-static {v0, v1}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4078
    iget-object p0, p0, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    .line 5061
    iget-object p0, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    const-string v0, "If-None-Match"

    invoke-static {p0, v0}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
