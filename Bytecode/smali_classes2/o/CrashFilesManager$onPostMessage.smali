.class final Lo/CrashFilesManager$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashFilesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field private extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Lorg/json/JSONObject;

.field public final onNavigationEvent:Lo/trimRepeats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/trimRepeats<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lo/trimRepeats;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lo/trimRepeats<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1134
    iput-object p1, p0, Lo/CrashFilesManager$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 1135
    iput-object p2, p0, Lo/CrashFilesManager$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    .line 1136
    iput-object p3, p0, Lo/CrashFilesManager$onPostMessage;->onMessageChannelReady:Lorg/json/JSONObject;

    .line 1137
    iput-object p4, p0, Lo/CrashFilesManager$onPostMessage;->onNavigationEvent:Lo/trimRepeats;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1147
    instance-of v0, p1, Lo/CrashFilesManager$onPostMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1148
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

    .line 1142
    iget-object v0, p0, Lo/CrashFilesManager$onPostMessage;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
