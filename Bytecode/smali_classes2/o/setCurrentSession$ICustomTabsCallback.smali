.class public abstract Lo/setCurrentSession$ICustomTabsCallback;
.super Lo/getCurrentTimeMillis$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setCurrentSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getCurrentTimeMillis$ICustomTabsCallback<",
        "Lo/LogFileManager;",
        "Lo/LogFileManager$DirectoryProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lo/getCurrentTimeMillis$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract visitChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V
.end method

.method public bridge synthetic visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Lo/LogFileManager;

    check-cast p2, Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {p0, p1, p2}, Lo/setCurrentSession$ICustomTabsCallback;->visitEntry(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    return-void
.end method

.method public visitEntry(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2}, Lo/setCurrentSession$ICustomTabsCallback;->visitChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    return-void
.end method
