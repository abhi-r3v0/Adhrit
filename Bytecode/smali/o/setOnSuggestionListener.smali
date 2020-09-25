.class public Lo/setOnSuggestionListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static extraCallback:Lo/setOnSuggestionListener;

.field public static final onPostMessage:Ljava/util/logging/Logger;


# instance fields
.field public onNavigationEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lo/setOnSuggestionListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    .line 16
    sput-object v0, Lo/setOnSuggestionListener;->extraCallback:Lo/setOnSuggestionListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    return-void
.end method

.method public static onNavigationEvent()Lo/setOnSuggestionListener;
    .locals 1

    .line 22
    sget-object v0, Lo/setOnSuggestionListener;->extraCallback:Lo/setOnSuggestionListener;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lo/setOnSuggestionListener;

    invoke-direct {v0}, Lo/setOnSuggestionListener;-><init>()V

    sput-object v0, Lo/setOnSuggestionListener;->extraCallback:Lo/setOnSuggestionListener;

    .line 25
    :cond_0
    sget-object v0, Lo/setOnSuggestionListener;->extraCallback:Lo/setOnSuggestionListener;

    return-object v0
.end method
