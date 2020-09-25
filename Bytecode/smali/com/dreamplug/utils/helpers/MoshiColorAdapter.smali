.class public final Lcom/dreamplug/utils/helpers/MoshiColorAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007\u00a2\u0006\u0002\u0010\u0007J\u001a\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u0007J\u0012\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010\r\u001a\u00020\u00062\u0008\u0008\u0001\u0010\t\u001a\u00020\u0004H\u0007J\u001b\u0010\r\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dreamplug/utils/helpers/MoshiColorAdapter;",
        "",
        "()V",
        "fromJson",
        "",
        "color",
        "",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "intToHex",
        "colorInt",
        "maskOpacity",
        "",
        "parseColor",
        "toJson",
        "(Ljava/lang/Integer;)Ljava/lang/String;",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lcom/dreamplug/utils/helpers/MoshiColorAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/dreamplug/utils/helpers/MoshiColorAdapter;

    invoke-direct {v0}, Lcom/dreamplug/utils/helpers/MoshiColorAdapter;-><init>()V

    sput-object v0, Lcom/dreamplug/utils/helpers/MoshiColorAdapter;->onNavigationEvent:Lcom/dreamplug/utils/helpers/MoshiColorAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Ljava/lang/String;)I
    .locals 1

    .line 33
    sget-object v0, Lo/isPreLayout;->onPostMessage:Lo/isPreLayout;

    invoke-static {p0}, Lo/isPreLayout;->onNavigationEvent(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static onNavigationEvent(IZ)Ljava/lang/String;
    .locals 0

    .line 30
    sget-object p1, Lo/isPreLayout;->onPostMessage:Lo/isPreLayout;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lo/isPreLayout;->onMessageChannelReady(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Lcom/dreamplug/utils/helpers/CredColorFormat;
    .end annotation

    .annotation runtime Lo/nativeInit;
    .end annotation

    const-string v0, "color"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2033
    sget-object v0, Lo/isPreLayout;->onPostMessage:Lo/isPreLayout;

    invoke-static {p1}, Lo/isPreLayout;->onNavigationEvent(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final fromJson(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lcom/dreamplug/utils/helpers/CredColorFormat;
    .end annotation

    .annotation runtime Lo/nativeInit;
    .end annotation

    .line 3033
    sget-object v0, Lo/isPreLayout;->onPostMessage:Lo/isPreLayout;

    invoke-static {p1}, Lo/isPreLayout;->onNavigationEvent(Ljava/lang/String;)I

    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final toJson(I)Ljava/lang/String;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/dreamplug/utils/helpers/CredColorFormat;
        .end annotation
    .end param
    .annotation runtime Lo/SessionMetadataJsonSerializer;
    .end annotation

    .line 1030
    sget-object v0, Lo/isPreLayout;->onPostMessage:Lo/isPreLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/isPreLayout;->onMessageChannelReady(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toJson(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lcom/dreamplug/utils/helpers/CredColorFormat;
        .end annotation
    .end param
    .annotation runtime Lo/SessionMetadataJsonSerializer;
    .end annotation

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2030
    sget-object v0, Lo/isPreLayout;->onPostMessage:Lo/isPreLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/isPreLayout;->onMessageChannelReady(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
