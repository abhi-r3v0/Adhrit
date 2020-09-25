.class public final Lo/getRemainingScrollHorizontal$extraCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ak$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRemainingScrollHorizontal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# static fields
.field public static final cred_symbols:I = 0x7f090000

.field public static final gilroy_bold:I = 0x7f090001

.field public static final gilroy_light:I = 0x7f090002

.field public static final gilroy_medium:I = 0x7f090003

.field public static final gilroy_regular:I = 0x7f090004

.field public static final gilroy_semibold:I = 0x7f090005

.field public static final onMessageChannelReady:Lo/getRemainingScrollHorizontal$extraCallback;

.field public static final overpass_mono_bold:I = 0x7f090007

.field public static final retro_8_bit:I = 0x7f090008


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4000
    new-instance v0, Lo/getRemainingScrollHorizontal$extraCallback;

    invoke-direct {v0}, Lo/getRemainingScrollHorizontal$extraCallback;-><init>()V

    sput-object v0, Lo/getRemainingScrollHorizontal$extraCallback;->onMessageChannelReady:Lo/getRemainingScrollHorizontal$extraCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 2000
    check-cast p1, Landroid/database/Cursor;

    .line 2324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2325
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3056
    new-instance v1, Lo/Foreground$4$onMessageChannelReady;

    invoke-direct {v1}, Lo/Foreground$4$onMessageChannelReady;-><init>()V

    sget-object v2, Lo/setReferrer;->extraCallback:Lo/setReferrer;

    if-eqz v2, :cond_1

    .line 3095
    iput-object v2, v1, Lo/Foreground$4$onMessageChannelReady;->extraCallback:Lo/setReferrer;

    const/4 v2, 0x1

    .line 2328
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/OaidClient$Info$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;)Lo/OaidClient$Info$onPostMessage;

    move-result-object v1

    const/4 v2, 0x2

    .line 2329
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lo/getItemDelegate$onMessageChannelReady;->extraCallback(I)Lo/setReferrer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/OaidClient$Info$onPostMessage;->onNavigationEvent(Lo/setReferrer;)Lo/OaidClient$Info$onPostMessage;

    move-result-object v1

    const/4 v2, 0x3

    .line 2330
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 3363
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 2330
    :goto_1
    invoke-virtual {v1, v2}, Lo/OaidClient$Info$onPostMessage;->onMessageChannelReady([B)Lo/OaidClient$Info$onPostMessage;

    move-result-object v1

    .line 2331
    invoke-virtual {v1}, Lo/OaidClient$Info$onPostMessage;->onPostMessage()Lo/OaidClient$Info;

    move-result-object v1

    .line 2326
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3093
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null priority"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v0
.end method
