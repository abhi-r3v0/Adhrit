.class abstract Lo/onLogMessage$extraCallback;
.super Lo/getMinKey$ICustomTabsCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onLogMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "extraCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Lo/getMinKey$ICustomTabsCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lo/onLogMessage$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method abstract ICustomTabsCallback(Lo/onLogMessage$extraCallback;)Z
.end method
