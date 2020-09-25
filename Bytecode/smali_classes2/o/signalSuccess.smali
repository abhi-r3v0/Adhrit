.class public Lo/signalSuccess;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onNavigationEvent:Lo/isValidKey$ICustomTabsCallback;

.field static final onPostMessage:Lo/currentStringRemainingChars;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lo/currentStringRemainingChars;

    invoke-direct {v0}, Lo/currentStringRemainingChars;-><init>()V

    sput-object v0, Lo/signalSuccess;->onPostMessage:Lo/currentStringRemainingChars;

    .line 31
    new-instance v0, Lo/isValidKey$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/isValidKey$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/signalSuccess;->onNavigationEvent:Lo/isValidKey$ICustomTabsCallback;

    return-void
.end method

.method protected constructor <init>(Lo/currentStringRemainingChars;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lo/signalSuccess;->onPostMessage:Lo/currentStringRemainingChars;

    if-ne p1, v0, :cond_0

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "nope"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method protected static onMessageChannelReady()Lo/isValidKey$ICustomTabsCallback;
    .locals 1

    .line 55
    sget-object v0, Lo/signalSuccess;->onNavigationEvent:Lo/isValidKey$ICustomTabsCallback;

    return-object v0
.end method

.method protected static onPostMessage()Lo/currentStringRemainingChars;
    .locals 1

    .line 63
    sget-object v0, Lo/signalSuccess;->onPostMessage:Lo/currentStringRemainingChars;

    return-object v0
.end method
