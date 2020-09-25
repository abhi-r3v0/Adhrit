.class public final Lo/isInTouchMode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatRadioButton;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/AppCompatRadioButton<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lo/AppCompatRadioButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AppCompatRadioButton<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lo/isInTouchMode;

    invoke-direct {v0}, Lo/isInTouchMode;-><init>()V

    sput-object v0, Lo/isInTouchMode;->onMessageChannelReady:Lo/AppCompatRadioButton;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPostMessage()Lo/isInTouchMode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/isInTouchMode<",
            "TT;>;"
        }
    .end annotation

    .line 25
    sget-object v0, Lo/isInTouchMode;->onMessageChannelReady:Lo/AppCompatRadioButton;

    check-cast v0, Lo/isInTouchMode;

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Landroid/content/Context;Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;II)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "TT;>;II)",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "TT;>;"
        }
    .end annotation

    return-object p2
.end method

.method public final onNavigationEvent(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method
