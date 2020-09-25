.class final Lo/CrashFilesManager$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashFilesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public final onMessageChannelReady:Lo/trimRepeats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/trimRepeats<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lo/trimRepeats;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lo/trimRepeats<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1162
    iput-object p1, p0, Lo/CrashFilesManager$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    .line 1163
    iput-object p2, p0, Lo/CrashFilesManager$ICustomTabsCallback;->onPostMessage:Lorg/json/JSONObject;

    .line 1164
    iput-object p3, p0, Lo/CrashFilesManager$ICustomTabsCallback;->onMessageChannelReady:Lo/trimRepeats;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1174
    instance-of v0, p1, Lo/CrashFilesManager$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1175
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1169
    iget-object v0, p0, Lo/CrashFilesManager$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
