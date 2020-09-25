.class final Lo/deleteSessionFilesDirectory$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/deleteSessionFilesDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final extraCallback:Ljava/lang/reflect/Field;

.field final onNavigationEvent:Ljava/lang/String;

.field final onPostMessage:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Field;Lo/JniNativeApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Lo/JniNativeApi<",
            "TT;>;)V"
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lo/deleteSessionFilesDirectory$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    .line 199
    iput-object p2, p0, Lo/deleteSessionFilesDirectory$ICustomTabsCallback;->extraCallback:Ljava/lang/reflect/Field;

    .line 200
    iput-object p3, p0, Lo/deleteSessionFilesDirectory$ICustomTabsCallback;->onPostMessage:Lo/JniNativeApi;

    return-void
.end method
