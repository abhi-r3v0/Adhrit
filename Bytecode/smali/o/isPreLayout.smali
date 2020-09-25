.class public final Lo/isPreLayout;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008J\u0010\u0010\t\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/textformatter/ColorParsingHelper;",
        "",
        "()V",
        "intToHex",
        "",
        "colorInt",
        "",
        "maskOpacity",
        "",
        "parseColor",
        "color",
        "textformatter_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/isPreLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lo/isPreLayout;

    invoke-direct {v0}, Lo/isPreLayout;-><init>()V

    sput-object v0, Lo/isPreLayout;->onPostMessage:Lo/isPreLayout;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic onMessageChannelReady(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Lo/isPreLayout;->onMessageChannelReady(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onMessageChannelReady(IZ)Ljava/lang/String;
    .locals 5

    const-string v0, "java.lang.String.format(format, *args)"

    const/4 v1, 0x0

    const-string v2, "#%06X"

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 8
    sget-object p1, Lo/createRepo;->onNavigationEvent:Lo/createRepo;

    new-array p1, v3, [Ljava/lang/Object;

    const v4, 0xffffff

    and-int/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 10
    :cond_0
    sget-object p1, Lo/createRepo;->onNavigationEvent:Lo/createRepo;

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static onNavigationEvent(Ljava/lang/String;)I
    .locals 1

    const-string v0, "#b2b2b2"

    if-eqz p0, :cond_0

    .line 17
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0

    .line 22
    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
