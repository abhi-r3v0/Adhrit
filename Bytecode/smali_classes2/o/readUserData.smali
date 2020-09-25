.class abstract Lo/readUserData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/readUserData$extraCallback;,
        Lo/readUserData$onPostMessage;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getImmediateChild(Lo/LogFileManager;)Lo/readUserData;
.end method

.method public abstract node()Lo/LogFileManager$DirectoryProvider;
.end method
