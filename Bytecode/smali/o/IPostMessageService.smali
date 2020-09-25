.class public final Lo/IPostMessageService;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/PreferenceGroup$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/IPostMessageService$onNavigationEvent;,
        Lo/IPostMessageService$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/getRoots;


# instance fields
.field private final extraCallback:[Ljava/lang/Object;

.field private final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/getRoots;

    invoke-direct {v0}, Lo/getRoots;-><init>()V

    sput-object v0, Lo/IPostMessageService;->onNavigationEvent:Lo/getRoots;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1047
    invoke-direct {p0, p1, v0}, Lo/IPostMessageService;-><init>(Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    iput-object p1, p0, Lo/IPostMessageService;->onMessageChannelReady:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1038
    iput-object p1, p0, Lo/IPostMessageService;->extraCallback:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 1052
    iget-object v0, p0, Lo/IPostMessageService;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent(Lo/sendSessionDestroyed;)V
    .locals 5

    .line 1057
    iget-object v0, p0, Lo/IPostMessageService;->extraCallback:[Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 1075
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_b

    .line 1077
    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    if-nez v3, :cond_0

    .line 1085
    invoke-interface {p1, v2}, Lo/sendSessionDestroyed;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 1086
    :cond_0
    instance-of v4, v3, [B

    if-eqz v4, :cond_1

    .line 1087
    check-cast v3, [B

    invoke-interface {p1, v2, v3}, Lo/sendSessionDestroyed;->extraCallback(I[B)V

    goto :goto_0

    .line 1088
    :cond_1
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_2

    .line 1089
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    float-to-double v3, v3

    invoke-interface {p1, v2, v3, v4}, Lo/sendSessionDestroyed;->onNavigationEvent(ID)V

    goto :goto_0

    .line 1090
    :cond_2
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_3

    .line 1091
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Lo/sendSessionDestroyed;->onNavigationEvent(ID)V

    goto :goto_0

    .line 1092
    :cond_3
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_4

    .line 1093
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Lo/sendSessionDestroyed;->ICustomTabsCallback(IJ)V

    goto :goto_0

    .line 1094
    :cond_4
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 1095
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {p1, v2, v3, v4}, Lo/sendSessionDestroyed;->ICustomTabsCallback(IJ)V

    goto :goto_0

    .line 1096
    :cond_5
    instance-of v4, v3, Ljava/lang/Short;

    if-eqz v4, :cond_6

    .line 1097
    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    move-result v3

    int-to-long v3, v3

    invoke-interface {p1, v2, v3, v4}, Lo/sendSessionDestroyed;->ICustomTabsCallback(IJ)V

    goto :goto_0

    .line 1098
    :cond_6
    instance-of v4, v3, Ljava/lang/Byte;

    if-eqz v4, :cond_7

    .line 1099
    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    int-to-long v3, v3

    invoke-interface {p1, v2, v3, v4}, Lo/sendSessionDestroyed;->ICustomTabsCallback(IJ)V

    goto :goto_0

    .line 1100
    :cond_7
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 1101
    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Lo/sendSessionDestroyed;->onNavigationEvent(ILjava/lang/String;)V

    goto :goto_0

    .line 1102
    :cond_8
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_a

    .line 1103
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    const-wide/16 v3, 0x1

    goto :goto_1

    :cond_9
    const-wide/16 v3, 0x0

    :goto_1
    invoke-interface {p1, v2, v3, v4}, Lo/sendSessionDestroyed;->ICustomTabsCallback(IJ)V

    goto/16 :goto_0

    .line 1105
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot bind "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Supported types: null, byte[], float, double, long, int, short, byte, string"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return-void
.end method
