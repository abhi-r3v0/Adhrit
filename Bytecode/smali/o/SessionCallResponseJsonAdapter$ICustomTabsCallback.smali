.class public final Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SessionCallResponseJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub:Lo/generateLink;

.field public final ICustomTabsCallback$Stub$Proxy:Z

.field public final asBinder:Ljava/lang/String;

.field public final asInterface:Ljava/lang/String;

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;

.field public final onPostMessage:J

.field public final onRelationshipValidationResult:J

.field public final onTransact:J

.field public final warmup:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    const/4 v2, 0x0

    const-string v3, ""

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    const/16 v16, 0x0

    .line 100
    invoke-direct/range {v0 .. v16}, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;-><init>(Ljava/lang/String;Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;Ljava/lang/String;JIJLo/generateLink;Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;Ljava/lang/String;JIJLo/generateLink;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 3

    move-object v0, p0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 142
    iput-object v1, v0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    move-object v1, p2

    .line 143
    iput-object v1, v0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onNavigationEvent:Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;

    move-object v1, p3

    .line 144
    iput-object v1, v0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    move-wide v1, p4

    .line 145
    iput-wide v1, v0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onPostMessage:J

    move v1, p6

    .line 146
    iput v1, v0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onMessageChannelReady:I

    move-wide v1, p7

    .line 147
    iput-wide v1, v0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onTransact:J

    move-object v1, p9

    .line 148
    iput-object v1, v0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/generateLink;

    move-object v1, p10

    .line 149
    iput-object v1, v0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->asBinder:Ljava/lang/String;

    move-object v1, p11

    .line 150
    iput-object v1, v0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->asInterface:Ljava/lang/String;

    move-wide v1, p12

    .line 151
    iput-wide v1, v0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onRelationshipValidationResult:J

    move-wide/from16 v1, p14

    .line 152
    iput-wide v1, v0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->warmup:J

    move/from16 v1, p16

    .line 153
    iput-boolean v1, v0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Ljava/lang/Long;)I
    .locals 5

    .line 158
    iget-wide v0, p0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onTransact:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-wide v0, p0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onTransact:J

    .line 159
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
