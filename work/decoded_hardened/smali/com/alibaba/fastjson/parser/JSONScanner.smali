.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONScanner.java"


# static fields
.field public static final ISO8601_LEN_0:I

.field public static final ISO8601_LEN_1:I

.field public static final ISO8601_LEN_2:I


# instance fields
.field private final len:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    const-string v0, "0000-00-00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    .line 169
    const-string v0, "0000-00-00T00:00:00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    .line 170
    const-string v0, "0000-00-00T00:00:00.000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 40
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "features"    # I

    .prologue
    .line 44
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>(I)V

    .line 46
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 51
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 54
    :cond_0
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I

    .prologue
    .line 72
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    .line 73
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I
    .param p3, "features"    # I

    .prologue
    .line 76
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method static charArrayCompare(Ljava/lang/String;I[C)Z
    .locals 5
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "dest"    # [C

    .prologue
    const/4 v2, 0x0

    .line 84
    array-length v0, p2

    .line 85
    .local v0, "destLen":I
    add-int v3, v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v2

    .line 89
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 90
    aget-char v3, p2, v1

    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 95
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static checkDate(CCCCCCII)Z
    .locals 5
    .param p0, "y0"    # C
    .param p1, "y1"    # C
    .param p2, "y2"    # C
    .param p3, "y3"    # C
    .param p4, "M0"    # C
    .param p5, "M1"    # C
    .param p6, "d0"    # I
    .param p7, "d1"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v1, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 609
    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v0

    .line 612
    :cond_1
    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 615
    if-lt p2, v2, :cond_0

    if-gt p2, v1, :cond_0

    .line 618
    if-lt p3, v2, :cond_0

    if-gt p3, v1, :cond_0

    .line 622
    if-ne p4, v2, :cond_4

    .line 623
    if-lt p5, v3, :cond_0

    if-gt p5, v1, :cond_0

    .line 634
    :cond_2
    if-ne p6, v2, :cond_5

    .line 635
    if-lt p7, v3, :cond_0

    if-gt p7, v1, :cond_0

    .line 650
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 626
    :cond_4
    if-ne p4, v3, :cond_0

    .line 627
    if-eq p5, v2, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v4, :cond_2

    goto :goto_0

    .line 638
    :cond_5
    if-eq p6, v3, :cond_6

    if-ne p6, v4, :cond_7

    .line 639
    :cond_6
    if-lt p7, v2, :cond_0

    if-le p7, v1, :cond_3

    goto :goto_0

    .line 642
    :cond_7
    const/16 v1, 0x33

    if-ne p6, v1, :cond_0

    .line 643
    if-eq p7, v2, :cond_3

    if-eq p7, v3, :cond_3

    goto :goto_0
.end method

.method private checkTime(CCCCCC)Z
    .locals 6
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .prologue
    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 555
    if-ne p1, v2, :cond_1

    .line 556
    if-lt p2, v2, :cond_0

    if-le p2, v3, :cond_2

    .line 595
    :cond_0
    :goto_0
    return v0

    .line 559
    :cond_1
    const/16 v1, 0x31

    if-ne p1, v1, :cond_5

    .line 560
    if-lt p2, v2, :cond_0

    if-gt p2, v3, :cond_0

    .line 571
    :cond_2
    if-lt p3, v2, :cond_6

    if-gt p3, v4, :cond_6

    .line 572
    if-lt p4, v2, :cond_0

    if-gt p4, v3, :cond_0

    .line 583
    :cond_3
    if-lt p5, v2, :cond_7

    if-gt p5, v4, :cond_7

    .line 584
    if-lt p6, v2, :cond_0

    if-gt p6, v3, :cond_0

    .line 595
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 563
    :cond_5
    const/16 v1, 0x32

    if-ne p1, v1, :cond_0

    .line 564
    if-lt p2, v2, :cond_0

    const/16 v1, 0x34

    if-le p2, v1, :cond_2

    goto :goto_0

    .line 575
    :cond_6
    if-ne p3, v5, :cond_0

    .line 576
    if-eq p4, v2, :cond_3

    goto :goto_0

    .line 587
    :cond_7
    if-ne p5, v5, :cond_0

    .line 588
    if-eq p6, v2, :cond_4

    goto :goto_0
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 5
    .param p1, "y0"    # C
    .param p2, "y1"    # C
    .param p3, "y2"    # C
    .param p4, "y3"    # C
    .param p5, "M0"    # C
    .param p6, "M1"    # C
    .param p7, "d0"    # C
    .param p8, "d1"    # C

    .prologue
    .line 599
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 600
    add-int/lit8 v3, p1, -0x30

    mul-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v4, p2, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    add-int/lit8 v4, p3, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, p4, -0x30

    add-int v2, v3, v4

    .line 601
    .local v2, "year":I
    add-int/lit8 v3, p5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p6, -0x30

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 602
    .local v1, "month":I
    add-int/lit8 v3, p7, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p8, -0x30

    add-int v0, v3, v4

    .line 603
    .local v0, "day":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 604
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 605
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 606
    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "hash"    # I
    .param p4, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final arrayCopy(I[CII)V
    .locals 2
    .param p1, "srcPos"    # I
    .param p2, "dest"    # [C
    .param p3, "destPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p4

    invoke-virtual {v0, p1, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1328
    return-void
.end method

.method public bytesValue()[B
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public final charArrayCompare([C)Z
    .locals 2
    .param p1, "chars"    # [C

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    return v0
.end method

.method public final charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt p1, v0, :cond_0

    .line 58
    const/16 v0, 0x1a

    .line 61
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method protected final copyTo(II[C)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "dest"    # [C

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 81
    return-void
.end method

.method public final indexOf(CI)I
    .locals 1
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public info()Ljava/lang/String;
    .locals 4

    .prologue
    const/high16 v3, 0x10000

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 1333
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 1335
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1335
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEOF()Z
    .locals 2

    .prologue
    .line 655
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()C
    .locals 2

    .prologue
    .line 65
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 66
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    .line 68
    :goto_0
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return v1

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 159
    .local v0, "chLocal":C
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 160
    .local v1, "sp":I
    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    .line 161
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 165
    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public scanFieldBoolean([C)Z
    .locals 11
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v10, 0x65

    const/16 v9, 0x2c

    const/16 v8, 0x10

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 1136
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1138
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v5, v6, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1139
    const/4 v5, -0x2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 1218
    :goto_0
    return v3

    .line 1143
    :cond_0
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v6, p1

    add-int v1, v5, v6

    .line 1145
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1148
    .local v0, "ch":C
    const/16 v5, 0x74

    if-ne v0, v5, :cond_4

    .line 1149
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x72

    if-eq v5, v6, :cond_1

    .line 1150
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 1151
    goto :goto_0

    .line 1153
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x75

    if-eq v5, v6, :cond_2

    .line 1154
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 1155
    goto :goto_0

    .line 1157
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_3

    .line 1158
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 1159
    goto :goto_0

    .line 1162
    :cond_3
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1163
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1164
    const/4 v3, 0x1

    .line 1191
    .local v3, "value":Z
    :goto_1
    if-ne v0, v9, :cond_a

    .line 1192
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1193
    const/4 v4, 0x3

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1194
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0

    .line 1165
    .end local v1    # "index":I
    .end local v3    # "value":Z
    .restart local v2    # "index":I
    :cond_4
    const/16 v5, 0x66

    if-ne v0, v5, :cond_9

    .line 1166
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-eq v5, v6, :cond_5

    .line 1167
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 1168
    goto :goto_0

    .line 1170
    :cond_5
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x6c

    if-eq v5, v6, :cond_6

    .line 1171
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 1172
    goto :goto_0

    .line 1174
    :cond_6
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x73

    if-eq v5, v6, :cond_7

    .line 1175
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 1176
    goto/16 :goto_0

    .line 1178
    :cond_7
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_8

    .line 1179
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 1180
    goto/16 :goto_0

    .line 1183
    :cond_8
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1184
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1185
    const/4 v3, 0x0

    .restart local v3    # "value":Z
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    .line 1187
    .end local v1    # "index":I
    .end local v3    # "value":Z
    .restart local v2    # "index":I
    :cond_9
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 1188
    goto/16 :goto_0

    .line 1195
    .end local v2    # "index":I
    .restart local v1    # "index":I
    .restart local v3    # "value":Z
    :cond_a
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_f

    .line 1196
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1197
    if-ne v0, v9, :cond_b

    .line 1198
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1199
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1212
    :goto_2
    const/4 v4, 0x4

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 1200
    :cond_b
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_c

    .line 1201
    const/16 v4, 0xf

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1202
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 1203
    :cond_c
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_d

    .line 1204
    const/16 v4, 0xd

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1205
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 1206
    :cond_d
    const/16 v5, 0x1a

    if-ne v0, v5, :cond_e

    .line 1207
    const/16 v4, 0x14

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2

    .line 1209
    :cond_e
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 1210
    goto/16 :goto_0

    .line 1214
    :cond_f
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v3, v4

    .line 1215
    goto/16 :goto_0
.end method

.method public scanFieldInt([C)I
    .locals 14
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v13, 0x10

    const/16 v12, 0x7d

    const/16 v11, 0x2c

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 659
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 660
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 661
    .local v5, "startPos":I
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 663
    .local v4, "startChar":C
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v8, v9, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v8

    if-nez v8, :cond_1

    .line 664
    const/4 v8, -0x2

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v6, v7

    .line 735
    :cond_0
    :goto_0
    return v6

    .line 668
    :cond_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v9, p1

    add-int v1, v8, v9

    .line 670
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 672
    .local v0, "ch":C
    const/4 v3, 0x0

    .line 673
    .local v3, "negative":Z
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_e

    .line 674
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 675
    const/4 v3, 0x1

    .line 679
    :goto_1
    const/16 v8, 0x30

    if-lt v0, v8, :cond_7

    const/16 v8, 0x39

    if-gt v0, v8, :cond_7

    .line 680
    add-int/lit8 v6, v0, -0x30

    .line 682
    .local v6, "value":I
    :goto_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 683
    const/16 v8, 0x30

    if-lt v0, v8, :cond_2

    const/16 v8, 0x39

    if-gt v0, v8, :cond_2

    .line 684
    mul-int/lit8 v8, v6, 0xa

    add-int/lit8 v9, v0, -0x30

    add-int v6, v8, v9

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_2

    .line 685
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_2
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_3

    .line 686
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v6, v7

    .line 687
    goto :goto_0

    .line 693
    :cond_3
    if-gez v6, :cond_4

    .line 694
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v6, v7

    .line 695
    goto :goto_0

    .line 698
    :cond_4
    if-eq v0, v11, :cond_5

    if-ne v0, v12, :cond_6

    .line 699
    :cond_5
    add-int/lit8 v8, v2, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 706
    :cond_6
    if-ne v0, v11, :cond_8

    .line 707
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 708
    const/4 v7, 0x3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 709
    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 710
    if-eqz v3, :cond_0

    neg-int v6, v6

    goto :goto_0

    .line 702
    .end local v2    # "index":I
    .end local v6    # "value":I
    .restart local v1    # "index":I
    :cond_7
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v6, v7

    .line 703
    goto :goto_0

    .line 713
    .end local v1    # "index":I
    .restart local v2    # "index":I
    .restart local v6    # "value":I
    :cond_8
    if-ne v0, v12, :cond_9

    .line 714
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 715
    if-ne v0, v11, :cond_a

    .line 716
    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 717
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 732
    :goto_3
    const/4 v7, 0x4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 735
    :cond_9
    if-eqz v3, :cond_0

    neg-int v6, v6

    goto/16 :goto_0

    .line 718
    :cond_a
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_b

    .line 719
    const/16 v7, 0xf

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 720
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 721
    :cond_b
    if-ne v0, v12, :cond_c

    .line 722
    const/16 v7, 0xd

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 723
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 724
    :cond_c
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_d

    .line 725
    const/16 v7, 0x14

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3

    .line 727
    :cond_d
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 728
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 729
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v6, v7

    .line 730
    goto/16 :goto_0

    .end local v6    # "value":I
    :cond_e
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_1
.end method

.method public scanFieldLong([C)J
    .locals 12
    .param p1, "fieldName"    # [C

    .prologue
    .line 1053
    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1054
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1055
    .local v5, "startPos":I
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1057
    .local v4, "startChar":C
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v8, v9, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1058
    const/4 v8, -0x2

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1059
    const-wide/16 v6, 0x0

    .line 1132
    :cond_0
    :goto_0
    return-wide v6

    .line 1062
    :cond_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v9, p1

    add-int v1, v8, v9

    .line 1064
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1066
    .local v0, "ch":C
    const/4 v3, 0x0

    .line 1067
    .local v3, "negative":Z
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_e

    .line 1068
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1069
    const/4 v3, 0x1

    .line 1073
    :goto_1
    const/16 v8, 0x30

    if-lt v0, v8, :cond_6

    const/16 v8, 0x39

    if-gt v0, v8, :cond_6

    .line 1074
    add-int/lit8 v8, v0, -0x30

    int-to-long v6, v8

    .line 1076
    .local v6, "value":J
    :goto_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1077
    const/16 v8, 0x30

    if-lt v0, v8, :cond_2

    const/16 v8, 0x39

    if-gt v0, v8, :cond_2

    .line 1078
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v10, v0, -0x30

    int-to-long v10, v10

    add-long v6, v8, v10

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_2

    .line 1079
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_2
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_3

    .line 1080
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1081
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 1083
    :cond_3
    const/16 v8, 0x2c

    if-eq v0, v8, :cond_4

    const/16 v8, 0x7d

    if-ne v0, v8, :cond_5

    .line 1084
    :cond_4
    add-int/lit8 v8, v2, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1089
    :cond_5
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_7

    .line 1090
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1091
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1092
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1093
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 1096
    .end local v2    # "index":I
    .end local v6    # "value":J
    .restart local v1    # "index":I
    :cond_6
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1097
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1098
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1099
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 1102
    .end local v1    # "index":I
    .restart local v2    # "index":I
    .restart local v6    # "value":J
    :cond_7
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_8

    .line 1103
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1104
    const/4 v8, 0x3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1105
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1106
    if-eqz v3, :cond_0

    neg-long v6, v6

    goto/16 :goto_0

    .line 1107
    :cond_8
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_d

    .line 1108
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1109
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_9

    .line 1110
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1111
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1126
    :goto_3
    const/4 v8, 0x4

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1132
    if-eqz v3, :cond_0

    neg-long v6, v6

    goto/16 :goto_0

    .line 1112
    :cond_9
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_a

    .line 1113
    const/16 v8, 0xf

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1114
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1115
    :cond_a
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_b

    .line 1116
    const/16 v8, 0xd

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1117
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1118
    :cond_b
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_c

    .line 1119
    const/16 v8, 0x14

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3

    .line 1121
    :cond_c
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1122
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1123
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1124
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 1128
    :cond_d
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1129
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .end local v6    # "value":J
    :cond_e
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_1
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 16
    .param p1, "fieldName"    # [C

    .prologue
    .line 739
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 740
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 741
    .local v11, "startPos":I
    move-object/from16 v0, p0

    iget-char v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 743
    .local v9, "startChar":C
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    invoke-static {v14, v15, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v14

    if-nez v14, :cond_0

    .line 744
    const/4 v14, -0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    .line 831
    :goto_0
    return-object v12

    .line 748
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int v6, v14, v15

    .line 750
    .local v6, "index":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 751
    .local v1, "ch":C
    const/16 v14, 0x22

    if-eq v1, v14, :cond_1

    .line 752
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 759
    :cond_1
    move v10, v7

    .line 760
    .local v10, "startIndex":I
    const/16 v14, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v4

    .line 761
    .local v4, "endIndex":I
    const/4 v14, -0x1

    if-ne v4, v14, :cond_2

    .line 762
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    const-string v15, "unclosed str"

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 765
    :cond_2
    sub-int v14, v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v13

    .line 766
    .local v13, "stringVal":Ljava/lang/String;
    const/16 v14, 0x5c

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    .line 768
    :goto_1
    const/4 v8, 0x0

    .line 769
    .local v8, "slashCount":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_3

    .line 770
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    const/16 v15, 0x5c

    if-ne v14, v15, :cond_3

    .line 771
    add-int/lit8 v8, v8, 0x1

    .line 769
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 776
    :cond_3
    rem-int/lit8 v14, v8, 0x2

    if-nez v14, :cond_6

    .line 782
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x1

    sub-int v3, v4, v14

    .line 783
    .local v3, "chars_len":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v2

    .line 785
    .local v2, "chars":[C
    invoke-static {v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v13

    .line 788
    .end local v2    # "chars":[C
    .end local v3    # "chars_len":I
    .end local v5    # "i":I
    .end local v8    # "slashCount":I
    :cond_4
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 790
    const/16 v14, 0x2c

    if-eq v1, v14, :cond_5

    const/16 v14, 0x7d

    if-ne v1, v14, :cond_7

    .line 791
    :cond_5
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 792
    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 793
    move-object v12, v13

    .line 801
    .local v12, "strVal":Ljava/lang/String;
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_8

    .line 802
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 803
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 779
    .end local v12    # "strVal":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v8    # "slashCount":I
    :cond_6
    const/16 v14, 0x22

    add-int/lit8 v15, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v4

    .line 780
    goto :goto_1

    .line 795
    .end local v5    # "i":I
    .end local v8    # "slashCount":I
    :cond_7
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 805
    .restart local v12    # "strVal":Ljava/lang/String;
    :cond_8
    const/16 v14, 0x7d

    if-ne v1, v14, :cond_d

    .line 806
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 807
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_9

    .line 808
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 809
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 824
    :goto_3
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 810
    :cond_9
    const/16 v14, 0x5d

    if-ne v1, v14, :cond_a

    .line 811
    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 812
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 813
    :cond_a
    const/16 v14, 0x7d

    if-ne v1, v14, :cond_b

    .line 814
    const/16 v14, 0xd

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 815
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 816
    :cond_b
    const/16 v14, 0x1a

    if-ne v1, v14, :cond_c

    .line 817
    const/16 v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3

    .line 819
    :cond_c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 820
    move-object/from16 v0, p0

    iput-char v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 821
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 822
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 826
    :cond_d
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 828
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 16
    .param p1, "fieldName"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 903
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 905
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    invoke-static {v14, v15, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v14

    if-nez v14, :cond_0

    .line 906
    const/4 v14, -0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 907
    const/4 v9, 0x0

    .line 1049
    :goto_0
    return-object v9

    .line 912
    :cond_0
    const-class v14, Ljava/util/HashSet;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 913
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 924
    .local v9, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int v7, v14, v15

    .line 926
    .local v7, "index":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .local v8, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 928
    .local v1, "ch":C
    const/16 v14, 0x5b

    if-ne v1, v14, :cond_d

    .line 929
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "index":I
    .restart local v7    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v8, v7

    .line 932
    .end local v7    # "index":I
    .restart local v8    # "index":I
    :goto_2
    const/16 v14, 0x22

    if-ne v1, v14, :cond_7

    .line 933
    move v12, v8

    .line 934
    .local v12, "startIndex":I
    const/16 v14, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v5

    .line 935
    .local v5, "endIndex":I
    const/4 v14, -0x1

    if-ne v5, v14, :cond_3

    .line 936
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    const-string v15, "unclosed str"

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 914
    .end local v1    # "ch":C
    .end local v5    # "endIndex":I
    .end local v8    # "index":I
    .end local v9    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v12    # "startIndex":I
    :cond_1
    const-class v14, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 915
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_1

    .line 918
    .end local v9    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v9    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_1

    .line 919
    .end local v9    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 920
    .local v4, "e":Ljava/lang/Exception;
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 939
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "ch":C
    .restart local v5    # "endIndex":I
    .restart local v8    # "index":I
    .restart local v9    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v12    # "startIndex":I
    :cond_3
    sub-int v14, v5, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v13

    .line 940
    .local v13, "stringVal":Ljava/lang/String;
    const/16 v14, 0x5c

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    .line 942
    :goto_3
    const/4 v10, 0x0

    .line 943
    .local v10, "slashCount":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_4
    if-ltz v6, :cond_4

    .line 944
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    const/16 v15, 0x5c

    if-ne v14, v15, :cond_4

    .line 945
    add-int/lit8 v10, v10, 0x1

    .line 943
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 950
    :cond_4
    rem-int/lit8 v14, v10, 0x2

    if-nez v14, :cond_6

    .line 956
    sub-int v3, v5, v12

    .line 957
    .local v3, "chars_len":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v2

    .line 959
    .local v2, "chars":[C
    invoke-static {v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v13

    .line 962
    .end local v2    # "chars":[C
    .end local v3    # "chars_len":I
    .end local v6    # "i":I
    .end local v10    # "slashCount":I
    :cond_5
    add-int/lit8 v7, v5, 0x1

    .line 963
    .end local v8    # "index":I
    .restart local v7    # "index":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 965
    invoke-interface {v9, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 978
    .end local v5    # "endIndex":I
    .end local v12    # "startIndex":I
    .end local v13    # "stringVal":Ljava/lang/String;
    :goto_5
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_b

    .line 979
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "index":I
    .restart local v7    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v8, v7

    .line 980
    .end local v7    # "index":I
    .restart local v8    # "index":I
    goto/16 :goto_2

    .line 953
    .restart local v5    # "endIndex":I
    .restart local v6    # "i":I
    .restart local v10    # "slashCount":I
    .restart local v12    # "startIndex":I
    .restart local v13    # "stringVal":Ljava/lang/String;
    :cond_6
    const/16 v14, 0x22

    add-int/lit8 v15, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v5

    .line 954
    goto :goto_3

    .line 966
    .end local v5    # "endIndex":I
    .end local v6    # "i":I
    .end local v10    # "slashCount":I
    .end local v12    # "startIndex":I
    .end local v13    # "stringVal":Ljava/lang/String;
    :cond_7
    const/16 v14, 0x6e

    if-ne v1, v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string v15, "ull"

    invoke-virtual {v14, v15, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 967
    add-int/lit8 v7, v8, 0x3

    .line 968
    .end local v8    # "index":I
    .restart local v7    # "index":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 969
    const/4 v14, 0x0

    invoke-interface {v9, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 970
    :cond_8
    const/16 v14, 0x5d

    if-ne v1, v14, :cond_a

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v14

    if-nez v14, :cond_a

    .line 971
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "index":I
    .restart local v7    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1003
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1004
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_f

    .line 1005
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1006
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 974
    .end local v7    # "index":I
    .restart local v8    # "index":I
    :cond_a
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 975
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 983
    :cond_b
    const/16 v14, 0x5d

    if-ne v1, v14, :cond_c

    .line 984
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "index":I
    .restart local v7    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 985
    :goto_7
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 986
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v7, v8

    .end local v8    # "index":I
    .restart local v7    # "index":I
    goto :goto_7

    .line 991
    .end local v7    # "index":I
    .restart local v8    # "index":I
    :cond_c
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 992
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 994
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string v15, "ull"

    invoke-virtual {v14, v15, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 995
    add-int/lit8 v7, v8, 0x3

    .line 996
    .end local v8    # "index":I
    .restart local v7    # "index":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 997
    const/4 v9, 0x0

    move v7, v8

    .end local v8    # "index":I
    .restart local v7    # "index":I
    goto :goto_6

    .line 999
    .end local v7    # "index":I
    .restart local v8    # "index":I
    :cond_e
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1000
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1008
    .end local v8    # "index":I
    .restart local v7    # "index":I
    :cond_f
    const/16 v14, 0x7d

    if-ne v1, v14, :cond_16

    .line 1009
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1011
    :cond_10
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_11

    .line 1012
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1013
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1043
    :goto_8
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 1015
    :cond_11
    const/16 v14, 0x5d

    if-ne v1, v14, :cond_12

    .line 1016
    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1017
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_8

    .line 1019
    :cond_12
    const/16 v14, 0x7d

    if-ne v1, v14, :cond_13

    .line 1020
    const/16 v14, 0xd

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1021
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_8

    .line 1023
    :cond_13
    const/16 v14, 0x1a

    if-ne v1, v14, :cond_14

    .line 1024
    const/16 v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1025
    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_8

    .line 1028
    :cond_14
    const/4 v11, 0x0

    .line 1029
    .local v11, "space":Z
    :goto_9
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 1030
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1031
    move-object/from16 v0, p0

    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1032
    const/4 v11, 0x1

    move v7, v8

    .end local v8    # "index":I
    .restart local v7    # "index":I
    goto :goto_9

    .line 1034
    :cond_15
    if-nez v11, :cond_10

    .line 1038
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1039
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1045
    .end local v11    # "space":Z
    :cond_16
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1046
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public scanFieldSymbol([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 13
    .param p1, "fieldName"    # [C
    .param p2, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v12, 0x7d

    const/16 v11, 0x2c

    const/16 v10, 0x22

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 835
    const/4 v7, 0x0

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 837
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v7, v8, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 838
    const/4 v7, -0x2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v5, v6

    .line 898
    :goto_0
    return-object v5

    .line 842
    :cond_0
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v8, p1

    add-int v2, v7, v8

    .line 844
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 845
    .local v0, "ch":C
    if-eq v0, v10, :cond_1

    .line 846
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v5, v6

    .line 847
    goto :goto_0

    .line 851
    :cond_1
    move v4, v3

    .line 852
    .local v4, "start":I
    const/4 v1, 0x0

    .local v1, "hash":I
    move v2, v3

    .line 854
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 855
    if-ne v0, v10, :cond_2

    .line 856
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 857
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 859
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    sub-int v8, v3, v4

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p2, v7, v4, v8, v1}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v5

    .line 871
    .local v5, "strVal":Ljava/lang/String;
    if-ne v0, v11, :cond_3

    .line 872
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 873
    const/4 v6, 0x3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 863
    .end local v5    # "strVal":Ljava/lang/String;
    :cond_2
    mul-int/lit8 v7, v1, 0x1f

    add-int v1, v7, v0

    .line 865
    const/16 v7, 0x5c

    if-ne v0, v7, :cond_9

    .line 866
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v5, v6

    .line 867
    goto :goto_0

    .line 875
    .restart local v5    # "strVal":Ljava/lang/String;
    :cond_3
    if-ne v0, v12, :cond_8

    .line 876
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 877
    if-ne v0, v11, :cond_4

    .line 878
    const/16 v6, 0x10

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 879
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 892
    :goto_2
    const/4 v6, 0x4

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 880
    :cond_4
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_5

    .line 881
    const/16 v6, 0xf

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 882
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 883
    :cond_5
    if-ne v0, v12, :cond_6

    .line 884
    const/16 v6, 0xd

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 885
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    .line 886
    :cond_6
    const/16 v7, 0x1a

    if-ne v0, v7, :cond_7

    .line 887
    const/16 v6, 0x14

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2

    .line 889
    :cond_7
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v5, v6

    .line 890
    goto/16 :goto_0

    .line 894
    :cond_8
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-object v5, v6

    .line 895
    goto/16 :goto_0

    .end local v5    # "strVal":Ljava/lang/String;
    :cond_9
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto/16 :goto_1
.end method

.method public scanISO8601DateIfMatch()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 67
    .param p1, "strict"    # Z

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v19, v0

    sub-int v55, v12, v19

    .line 179
    .local v55, "rest":I
    if-nez p1, :cond_4

    const/16 v12, 0xd

    move/from16 v0, v55

    if-le v0, v12, :cond_4

    .line 180
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v32

    .line 181
    .local v32, "c0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v33

    .line 182
    .local v33, "c1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v34

    .line 183
    .local v34, "c2":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v35

    .line 184
    .local v35, "c3":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v36

    .line 185
    .local v36, "c4":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v37

    .line 187
    .local v37, "c5":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v55

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v42

    .line 188
    .local v42, "c_r0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v55

    add-int/lit8 v12, v12, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v43

    .line 189
    .local v43, "c_r1":C
    const/16 v12, 0x2f

    move/from16 v0, v32

    if-ne v0, v12, :cond_4

    const/16 v12, 0x44

    move/from16 v0, v33

    if-ne v0, v12, :cond_4

    const/16 v12, 0x61

    move/from16 v0, v34

    if-ne v0, v12, :cond_4

    const/16 v12, 0x74

    move/from16 v0, v35

    if-ne v0, v12, :cond_4

    const/16 v12, 0x65

    move/from16 v0, v36

    if-ne v0, v12, :cond_4

    const/16 v12, 0x28

    move/from16 v0, v37

    if-ne v0, v12, :cond_4

    const/16 v12, 0x2f

    move/from16 v0, v42

    if-ne v0, v12, :cond_4

    const/16 v12, 0x29

    move/from16 v0, v43

    if-ne v0, v12, :cond_4

    .line 191
    const/16 v54, -0x1

    .line 192
    .local v54, "plusIndex":I
    const/16 v47, 0x6

    .local v47, "i":I
    :goto_0
    move/from16 v0, v47

    move/from16 v1, v55

    if-ge v0, v1, :cond_2

    .line 193
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v47

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v31

    .line 194
    .local v31, "c":C
    const/16 v12, 0x2b

    move/from16 v0, v31

    if-ne v0, v12, :cond_1

    .line 195
    move/from16 v54, v47

    .line 192
    :cond_0
    add-int/lit8 v47, v47, 0x1

    goto :goto_0

    .line 196
    :cond_1
    const/16 v12, 0x30

    move/from16 v0, v31

    if-lt v0, v12, :cond_2

    const/16 v12, 0x39

    move/from16 v0, v31

    if-le v0, v12, :cond_0

    .line 200
    .end local v31    # "c":C
    :cond_2
    const/4 v12, -0x1

    move/from16 v0, v54

    if-ne v0, v12, :cond_3

    .line 201
    const/4 v12, 0x0

    .line 527
    .end local v32    # "c0":C
    .end local v33    # "c1":C
    .end local v34    # "c2":C
    .end local v35    # "c3":C
    .end local v36    # "c4":C
    .end local v37    # "c5":C
    .end local v42    # "c_r0":C
    .end local v43    # "c_r1":C
    .end local v47    # "i":I
    .end local v54    # "plusIndex":I
    :goto_1
    return v12

    .line 203
    .restart local v32    # "c0":C
    .restart local v33    # "c1":C
    .restart local v34    # "c2":C
    .restart local v35    # "c3":C
    .restart local v36    # "c4":C
    .restart local v37    # "c5":C
    .restart local v42    # "c_r0":C
    .restart local v43    # "c_r1":C
    .restart local v47    # "i":I
    .restart local v54    # "plusIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v53, v12, 0x6

    .line 204
    .local v53, "offset":I
    sub-int v12, v54, v53

    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v52

    .line 205
    .local v52, "numberText":Ljava/lang/String;
    invoke-static/range {v52 .. v52}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v48

    .line 207
    .local v48, "millis":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-wide/from16 v0, v48

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 210
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 211
    const/4 v12, 0x1

    goto :goto_1

    .line 215
    .end local v32    # "c0":C
    .end local v33    # "c1":C
    .end local v34    # "c2":C
    .end local v35    # "c3":C
    .end local v36    # "c4":C
    .end local v37    # "c5":C
    .end local v42    # "c_r0":C
    .end local v43    # "c_r1":C
    .end local v47    # "i":I
    .end local v48    # "millis":J
    .end local v52    # "numberText":Ljava/lang/String;
    .end local v53    # "offset":I
    .end local v54    # "plusIndex":I
    :cond_4
    const/16 v12, 0x8

    move/from16 v0, v55

    if-eq v0, v12, :cond_5

    const/16 v12, 0xe

    move/from16 v0, v55

    if-eq v0, v12, :cond_5

    const/16 v12, 0x11

    move/from16 v0, v55

    if-ne v0, v12, :cond_11

    .line 216
    :cond_5
    if-eqz p1, :cond_6

    .line 217
    const/4 v12, 0x0

    goto :goto_1

    .line 220
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 221
    .local v4, "y0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 222
    .local v5, "y1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 223
    .local v6, "y2":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 224
    .local v7, "y3":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 225
    .local v8, "M0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 226
    .local v9, "M1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    .line 227
    .local v10, "d0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    .line 229
    .local v11, "d1":C
    invoke-static/range {v4 .. v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v12

    if-nez v12, :cond_7

    .line 230
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v12, p0

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    .line 233
    invoke-direct/range {v12 .. v20}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 236
    const/16 v12, 0x8

    move/from16 v0, v55

    if-eq v0, v12, :cond_10

    .line 237
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 238
    .local v13, "h0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    .line 239
    .local v14, "h1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 240
    .local v15, "m0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .line 241
    .local v16, "m1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v17

    .line 242
    .local v17, "s0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    .local v18, "s1":C
    move-object/from16 v12, p0

    .line 244
    invoke-direct/range {v12 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v12

    if-nez v12, :cond_8

    .line 245
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 248
    :cond_8
    const/16 v12, 0x11

    move/from16 v0, v55

    if-ne v0, v12, :cond_f

    .line 249
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v28

    .line 250
    .local v28, "S0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v29

    .line 251
    .local v29, "S1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v30

    .line 252
    .local v30, "S2":C
    const/16 v12, 0x30

    move/from16 v0, v28

    if-lt v0, v12, :cond_9

    const/16 v12, 0x39

    move/from16 v0, v28

    if-le v0, v12, :cond_a

    .line 253
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 255
    :cond_a
    const/16 v12, 0x30

    move/from16 v0, v29

    if-lt v0, v12, :cond_b

    const/16 v12, 0x39

    move/from16 v0, v29

    if-le v0, v12, :cond_c

    .line 256
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 258
    :cond_c
    const/16 v12, 0x30

    move/from16 v0, v30

    if-lt v0, v12, :cond_d

    const/16 v12, 0x39

    move/from16 v0, v30

    if-le v0, v12, :cond_e

    .line 259
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 262
    :cond_e
    add-int/lit8 v12, v28, -0x30

    mul-int/lit8 v12, v12, 0x64

    add-int/lit8 v19, v29, -0x30

    mul-int/lit8 v19, v19, 0xa

    add-int v12, v12, v19

    add-int/lit8 v19, v30, -0x30

    add-int v48, v12, v19

    .line 267
    .end local v28    # "S0":C
    .end local v29    # "S1":C
    .end local v30    # "S2":C
    .local v48, "millis":I
    :goto_2
    add-int/lit8 v12, v13, -0x30

    mul-int/lit8 v12, v12, 0xa

    add-int/lit8 v19, v14, -0x30

    add-int v46, v12, v19

    .line 268
    .local v46, "hour":I
    add-int/lit8 v12, v15, -0x30

    mul-int/lit8 v12, v12, 0xa

    add-int/lit8 v19, v16, -0x30

    add-int v51, v12, v19

    .line 269
    .local v51, "minute":I
    add-int/lit8 v12, v17, -0x30

    mul-int/lit8 v12, v12, 0xa

    add-int/lit8 v19, v18, -0x30

    add-int v56, v12, v19

    .line 277
    .end local v13    # "h0":C
    .end local v14    # "h1":C
    .end local v15    # "m0":C
    .end local v16    # "m1":C
    .end local v17    # "s0":C
    .end local v18    # "s1":C
    .local v56, "seconds":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xb

    move/from16 v0, v19

    move/from16 v1, v46

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 278
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xc

    move/from16 v0, v19

    move/from16 v1, v51

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xd

    move/from16 v0, v19

    move/from16 v1, v56

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 280
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    move/from16 v0, v19

    move/from16 v1, v48

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 282
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 283
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 264
    .end local v46    # "hour":I
    .end local v48    # "millis":I
    .end local v51    # "minute":I
    .end local v56    # "seconds":I
    .restart local v13    # "h0":C
    .restart local v14    # "h1":C
    .restart local v15    # "m0":C
    .restart local v16    # "m1":C
    .restart local v17    # "s0":C
    .restart local v18    # "s1":C
    :cond_f
    const/16 v48, 0x0

    .restart local v48    # "millis":I
    goto :goto_2

    .line 271
    .end local v13    # "h0":C
    .end local v14    # "h1":C
    .end local v15    # "m0":C
    .end local v16    # "m1":C
    .end local v17    # "s0":C
    .end local v18    # "s1":C
    .end local v48    # "millis":I
    :cond_10
    const/16 v46, 0x0

    .line 272
    .restart local v46    # "hour":I
    const/16 v51, 0x0

    .line 273
    .restart local v51    # "minute":I
    const/16 v56, 0x0

    .line 274
    .restart local v56    # "seconds":I
    const/16 v48, 0x0

    .restart local v48    # "millis":I
    goto :goto_3

    .line 286
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    .end local v46    # "hour":I
    .end local v48    # "millis":I
    .end local v51    # "minute":I
    .end local v56    # "seconds":I
    :cond_11
    const/16 v12, 0x9

    move/from16 v0, v55

    if-ge v0, v12, :cond_12

    .line 287
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 290
    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v32

    .line 291
    .restart local v32    # "c0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v33

    .line 292
    .restart local v33    # "c1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v34

    .line 293
    .restart local v34    # "c2":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v35

    .line 294
    .restart local v35    # "c3":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v36

    .line 295
    .restart local v36    # "c4":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v37

    .line 296
    .restart local v37    # "c5":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v38

    .line 297
    .local v38, "c6":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v39

    .line 298
    .local v39, "c7":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v40

    .line 299
    .local v40, "c8":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v41

    .line 302
    .local v41, "c9":C
    const/16 v12, 0x2d

    move/from16 v0, v36

    if-ne v0, v12, :cond_13

    const/16 v12, 0x2d

    move/from16 v0, v39

    if-eq v0, v12, :cond_14

    :cond_13
    const/16 v12, 0x2f

    move/from16 v0, v36

    if-ne v0, v12, :cond_15

    const/16 v12, 0x2f

    move/from16 v0, v39

    if-ne v0, v12, :cond_15

    .line 305
    :cond_14
    move/from16 v4, v32

    .line 306
    .restart local v4    # "y0":C
    move/from16 v5, v33

    .line 307
    .restart local v5    # "y1":C
    move/from16 v6, v34

    .line 308
    .restart local v6    # "y2":C
    move/from16 v7, v35

    .line 309
    .restart local v7    # "y3":C
    move/from16 v8, v37

    .line 310
    .restart local v8    # "M0":C
    move/from16 v9, v38

    .line 311
    .restart local v9    # "M1":C
    move/from16 v10, v40

    .line 312
    .restart local v10    # "d0":C
    move/from16 v11, v41

    .line 363
    .restart local v11    # "d1":C
    :goto_4
    invoke-static/range {v4 .. v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v12

    if-nez v12, :cond_27

    .line 364
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 313
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_15
    const/16 v12, 0x2e

    move/from16 v0, v34

    if-ne v0, v12, :cond_16

    const/16 v12, 0x2e

    move/from16 v0, v37

    if-eq v0, v12, :cond_17

    :cond_16
    const/16 v12, 0x2d

    move/from16 v0, v34

    if-ne v0, v12, :cond_18

    const/16 v12, 0x2d

    move/from16 v0, v37

    if-ne v0, v12, :cond_18

    .line 316
    :cond_17
    move/from16 v10, v32

    .line 317
    .restart local v10    # "d0":C
    move/from16 v11, v33

    .line 318
    .restart local v11    # "d1":C
    move/from16 v8, v35

    .line 319
    .restart local v8    # "M0":C
    move/from16 v9, v36

    .line 320
    .restart local v9    # "M1":C
    move/from16 v4, v38

    .line 321
    .restart local v4    # "y0":C
    move/from16 v5, v39

    .line 322
    .restart local v5    # "y1":C
    move/from16 v6, v40

    .line 323
    .restart local v6    # "y2":C
    move/from16 v7, v41

    .restart local v7    # "y3":C
    goto :goto_4

    .line 325
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_18
    const/16 v12, 0x5e74

    move/from16 v0, v36

    if-eq v0, v12, :cond_19

    const v12, 0xb144

    move/from16 v0, v36

    if-ne v0, v12, :cond_26

    .line 326
    :cond_19
    move/from16 v4, v32

    .line 327
    .restart local v4    # "y0":C
    move/from16 v5, v33

    .line 328
    .restart local v5    # "y1":C
    move/from16 v6, v34

    .line 329
    .restart local v6    # "y2":C
    move/from16 v7, v35

    .line 331
    .restart local v7    # "y3":C
    const/16 v12, 0x6708

    move/from16 v0, v39

    if-eq v0, v12, :cond_1a

    const v12, 0xc6d4

    move/from16 v0, v39

    if-ne v0, v12, :cond_1f

    .line 332
    :cond_1a
    move/from16 v8, v37

    .line 333
    .restart local v8    # "M0":C
    move/from16 v9, v38

    .line 334
    .restart local v9    # "M1":C
    const/16 v12, 0x65e5

    move/from16 v0, v41

    if-eq v0, v12, :cond_1b

    const v12, 0xc77c

    move/from16 v0, v41

    if-ne v0, v12, :cond_1c

    .line 335
    :cond_1b
    const/16 v10, 0x30

    .line 336
    .restart local v10    # "d0":C
    move/from16 v11, v40

    .restart local v11    # "d1":C
    goto :goto_4

    .line 337
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_1c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x65e5

    move/from16 v0, v19

    if-eq v12, v0, :cond_1d

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const v19, 0xc77c

    move/from16 v0, v19

    if-ne v12, v0, :cond_1e

    .line 338
    :cond_1d
    move/from16 v10, v40

    .line 339
    .restart local v10    # "d0":C
    move/from16 v11, v41

    .restart local v11    # "d1":C
    goto/16 :goto_4

    .line 341
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_1e
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 343
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    :cond_1f
    const/16 v12, 0x6708

    move/from16 v0, v38

    if-eq v0, v12, :cond_20

    const v12, 0xc6d4

    move/from16 v0, v38

    if-ne v0, v12, :cond_25

    .line 344
    :cond_20
    const/16 v8, 0x30

    .line 345
    .restart local v8    # "M0":C
    move/from16 v9, v37

    .line 346
    .restart local v9    # "M1":C
    const/16 v12, 0x65e5

    move/from16 v0, v40

    if-eq v0, v12, :cond_21

    const v12, 0xc77c

    move/from16 v0, v40

    if-ne v0, v12, :cond_22

    .line 347
    :cond_21
    const/16 v10, 0x30

    .line 348
    .restart local v10    # "d0":C
    move/from16 v11, v39

    .restart local v11    # "d1":C
    goto/16 :goto_4

    .line 349
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_22
    const/16 v12, 0x65e5

    move/from16 v0, v41

    if-eq v0, v12, :cond_23

    const v12, 0xc77c

    move/from16 v0, v41

    if-ne v0, v12, :cond_24

    .line 350
    :cond_23
    move/from16 v10, v39

    .line 351
    .restart local v10    # "d0":C
    move/from16 v11, v40

    .restart local v11    # "d1":C
    goto/16 :goto_4

    .line 353
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_24
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 356
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    :cond_25
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 359
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    :cond_26
    const/4 v12, 0x0

    goto/16 :goto_1

    .restart local v4    # "y0":C
    .restart local v5    # "y1":C
    .restart local v6    # "y2":C
    .restart local v7    # "y3":C
    .restart local v8    # "M0":C
    .restart local v9    # "M1":C
    .restart local v10    # "d0":C
    .restart local v11    # "d1":C
    :cond_27
    move-object/from16 v19, p0

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    .line 367
    invoke-direct/range {v19 .. v27}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 369
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v57

    .line 370
    .local v57, "t":C
    const/16 v12, 0x54

    move/from16 v0, v57

    if-eq v0, v12, :cond_28

    const/16 v12, 0x20

    move/from16 v0, v57

    if-ne v0, v12, :cond_29

    if-nez p1, :cond_29

    .line 371
    :cond_28
    sget v12, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    move/from16 v0, v55

    if-ge v0, v12, :cond_31

    .line 372
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 374
    :cond_29
    const/16 v12, 0x22

    move/from16 v0, v57

    if-eq v0, v12, :cond_2a

    const/16 v12, 0x1a

    move/from16 v0, v57

    if-eq v0, v12, :cond_2a

    const/16 v12, 0x65e5

    move/from16 v0, v57

    if-eq v0, v12, :cond_2a

    const v12, 0xc77c

    move/from16 v0, v57

    if-ne v0, v12, :cond_2b

    .line 375
    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xb

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 376
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xc

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 377
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xd

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 378
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 380
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    move-object/from16 v0, p0

    iput-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 382
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 383
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 384
    :cond_2b
    const/16 v12, 0x2b

    move/from16 v0, v57

    if-eq v0, v12, :cond_2c

    const/16 v12, 0x2d

    move/from16 v0, v57

    if-ne v0, v12, :cond_30

    .line 385
    :cond_2c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/16 v19, 0x10

    move/from16 v0, v19

    if-ne v12, v0, :cond_2f

    .line 386
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x3a

    move/from16 v0, v19

    if-ne v12, v0, :cond_2d

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xe

    .line 387
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x30

    move/from16 v0, v19

    if-ne v12, v0, :cond_2d

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xf

    .line 388
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x30

    move/from16 v0, v19

    if-eq v12, v0, :cond_2e

    .line 389
    :cond_2d
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 392
    :cond_2e
    const/16 v20, 0x30

    const/16 v21, 0x30

    const/16 v22, 0x30

    const/16 v23, 0x30

    const/16 v24, 0x30

    const/16 v25, 0x30

    move-object/from16 v19, p0

    invoke-virtual/range {v19 .. v25}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 393
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 394
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v57

    move/from16 v2, v19

    invoke-virtual {v0, v1, v12, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    .line 395
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 397
    :cond_2f
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 399
    :cond_30
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 402
    :cond_31
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x3a

    move/from16 v0, v19

    if-eq v12, v0, :cond_32

    .line 403
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 405
    :cond_32
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x3a

    move/from16 v0, v19

    if-eq v12, v0, :cond_33

    .line 406
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 409
    :cond_33
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 410
    .restart local v13    # "h0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    .line 411
    .restart local v14    # "h1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 412
    .restart local v15    # "m0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .line 413
    .restart local v16    # "m1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v17

    .line 414
    .restart local v17    # "s0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    .restart local v18    # "s1":C
    move-object/from16 v12, p0

    .line 416
    invoke-direct/range {v12 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v12

    if-nez v12, :cond_34

    .line 417
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_34
    move-object/from16 v12, p0

    .line 420
    invoke-virtual/range {v12 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 422
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v44

    .line 423
    .local v44, "dot":C
    const/16 v12, 0x2e

    move/from16 v0, v44

    if-ne v0, v12, :cond_35

    .line 424
    sget v12, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    move/from16 v0, v55

    if-ge v0, v12, :cond_37

    .line 425
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 428
    :cond_35
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 430
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    move-object/from16 v0, p0

    iput-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 432
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 434
    const/16 v12, 0x5a

    move/from16 v0, v44

    if-ne v0, v12, :cond_36

    .line 436
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    if-eqz v12, :cond_36

    .line 437
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v65

    .line 438
    .local v65, "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v65

    array-length v12, v0

    if-lez v12, :cond_36

    .line 439
    const/4 v12, 0x0

    aget-object v12, v65, v12

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v63

    .line 440
    .local v63, "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, v63

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 444
    .end local v63    # "timeZone":Ljava/util/TimeZone;
    .end local v65    # "timeZoneIDs":[Ljava/lang/String;
    :cond_36
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 447
    :cond_37
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v28

    .line 448
    .restart local v28    # "S0":C
    const/16 v12, 0x30

    move/from16 v0, v28

    if-lt v0, v12, :cond_38

    const/16 v12, 0x39

    move/from16 v0, v28

    if-le v0, v12, :cond_39

    .line 449
    :cond_38
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 451
    :cond_39
    add-int/lit8 v48, v28, -0x30

    .line 452
    .restart local v48    # "millis":I
    const/16 v50, 0x1

    .line 455
    .local v50, "millisLen":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v29

    .line 456
    .restart local v29    # "S1":C
    const/16 v12, 0x30

    move/from16 v0, v29

    if-lt v0, v12, :cond_3a

    const/16 v12, 0x39

    move/from16 v0, v29

    if-gt v0, v12, :cond_3a

    .line 457
    mul-int/lit8 v12, v48, 0xa

    add-int/lit8 v19, v29, -0x30

    add-int v48, v12, v19

    .line 458
    const/16 v50, 0x2

    .line 462
    :cond_3a
    const/4 v12, 0x2

    move/from16 v0, v50

    if-ne v0, v12, :cond_3b

    .line 463
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v30

    .line 464
    .restart local v30    # "S2":C
    const/16 v12, 0x30

    move/from16 v0, v30

    if-lt v0, v12, :cond_3b

    const/16 v12, 0x39

    move/from16 v0, v30

    if-gt v0, v12, :cond_3b

    .line 465
    mul-int/lit8 v12, v48, 0xa

    add-int/lit8 v19, v30, -0x30

    add-int v48, v12, v19

    .line 466
    const/16 v50, 0x3

    .line 470
    .end local v30    # "S2":C
    :cond_3b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    move/from16 v0, v19

    move/from16 v1, v48

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 472
    const/16 v66, 0x0

    .line 473
    .local v66, "timzeZoneLength":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x14

    add-int v12, v12, v50

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v64

    .line 474
    .local v64, "timeZoneFlag":C
    const/16 v12, 0x2b

    move/from16 v0, v64

    if-eq v0, v12, :cond_3c

    const/16 v12, 0x2d

    move/from16 v0, v64

    if-ne v0, v12, :cond_47

    .line 475
    :cond_3c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x14

    add-int v12, v12, v50

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v58

    .line 476
    .local v58, "t0":C
    const/16 v12, 0x30

    move/from16 v0, v58

    if-lt v0, v12, :cond_3d

    const/16 v12, 0x31

    move/from16 v0, v58

    if-le v0, v12, :cond_3e

    .line 477
    :cond_3d
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 480
    :cond_3e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x14

    add-int v12, v12, v50

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v59

    .line 481
    .local v59, "t1":C
    const/16 v12, 0x30

    move/from16 v0, v59

    if-lt v0, v12, :cond_3f

    const/16 v12, 0x39

    move/from16 v0, v59

    if-le v0, v12, :cond_40

    .line 482
    :cond_3f
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 485
    :cond_40
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x14

    add-int v12, v12, v50

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v60

    .line 486
    .local v60, "t2":C
    const/16 v12, 0x3a

    move/from16 v0, v60

    if-ne v0, v12, :cond_44

    .line 487
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x14

    add-int v12, v12, v50

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v61

    .line 488
    .local v61, "t3":C
    const/16 v12, 0x30

    move/from16 v0, v61

    if-eq v0, v12, :cond_41

    .line 489
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 492
    :cond_41
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x14

    add-int v12, v12, v50

    add-int/lit8 v12, v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v62

    .line 493
    .local v62, "t4":C
    const/16 v12, 0x30

    move/from16 v0, v62

    if-eq v0, v12, :cond_42

    .line 494
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 496
    :cond_42
    const/16 v66, 0x6

    .line 507
    .end local v61    # "t3":C
    .end local v62    # "t4":C
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v64

    move/from16 v2, v58

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    .line 520
    .end local v58    # "t0":C
    .end local v59    # "t1":C
    .end local v60    # "t2":C
    :cond_43
    :goto_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v19, v50, 0x14

    add-int v19, v19, v66

    add-int v12, v12, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v45

    .line 521
    .local v45, "end":C
    const/16 v12, 0x1a

    move/from16 v0, v45

    if-eq v0, v12, :cond_48

    const/16 v12, 0x22

    move/from16 v0, v45

    if-eq v0, v12, :cond_48

    .line 522
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 497
    .end local v45    # "end":C
    .restart local v58    # "t0":C
    .restart local v59    # "t1":C
    .restart local v60    # "t2":C
    :cond_44
    const/16 v12, 0x30

    move/from16 v0, v60

    if-ne v0, v12, :cond_46

    .line 498
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x14

    add-int v12, v12, v50

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v61

    .line 499
    .restart local v61    # "t3":C
    const/16 v12, 0x30

    move/from16 v0, v61

    if-eq v0, v12, :cond_45

    .line 500
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 502
    :cond_45
    const/16 v66, 0x5

    .line 503
    goto :goto_5

    .line 504
    .end local v61    # "t3":C
    :cond_46
    const/16 v66, 0x3

    goto :goto_5

    .line 509
    .end local v58    # "t0":C
    .end local v59    # "t1":C
    .end local v60    # "t2":C
    :cond_47
    const/16 v12, 0x5a

    move/from16 v0, v64

    if-ne v0, v12, :cond_43

    .line 510
    const/16 v66, 0x1

    .line 511
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    if-eqz v12, :cond_43

    .line 512
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v65

    .line 513
    .restart local v65    # "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v65

    array-length v12, v0

    if-lez v12, :cond_43

    .line 514
    const/4 v12, 0x0

    aget-object v12, v65, v12

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v63

    .line 515
    .restart local v63    # "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, v63

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_6

    .line 524
    .end local v63    # "timeZone":Ljava/util/TimeZone;
    .end local v65    # "timeZoneIDs":[Ljava/lang/String;
    .restart local v45    # "end":C
    :cond_48
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v19, v50, 0x14

    add-int v19, v19, v66

    add-int v12, v12, v19

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    move-object/from16 v0, p0

    iput-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 526
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 527
    const/4 v12, 0x1

    goto/16 :goto_1
.end method

.method public final scanInt(C)I
    .locals 11
    .param p1, "expectNext"    # C

    .prologue
    const/16 v10, 0x39

    const/16 v9, 0x30

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 1222
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1224
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1225
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1227
    .local v0, "chLocal":C
    const/16 v6, 0x2d

    if-ne v0, v6, :cond_0

    const/4 v1, 0x1

    .line 1228
    .local v1, "negative":Z
    :goto_0
    if-eqz v1, :cond_9

    .line 1229
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1233
    :goto_1
    if-lt v0, v9, :cond_3

    if-gt v0, v10, :cond_3

    .line 1234
    add-int/lit8 v4, v0, -0x30

    .line 1236
    .local v4, "value":I
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1237
    if-lt v0, v9, :cond_1

    if-gt v0, v10, :cond_1

    .line 1238
    mul-int/lit8 v6, v4, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v4, v6, v7

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .end local v1    # "negative":Z
    .end local v2    # "offset":I
    .end local v4    # "value":I
    .restart local v3    # "offset":I
    :cond_0
    move v1, v5

    .line 1227
    goto :goto_0

    .line 1239
    .restart local v1    # "negative":Z
    .restart local v4    # "value":I
    :cond_1
    const/16 v6, 0x2e

    if-ne v0, v6, :cond_2

    .line 1240
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v4, v5

    .line 1268
    .end local v4    # "value":I
    :goto_3
    return v4

    .line 1246
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "value":I
    :cond_2
    if-gez v4, :cond_5

    .line 1247
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v4, v5

    .line 1248
    goto :goto_3

    .line 1251
    .end local v4    # "value":I
    :cond_3
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v4, v5

    .line 1252
    goto :goto_3

    .line 1263
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "value":I
    :cond_4
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1264
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1256
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_5
    if-ne v0, p1, :cond_4

    .line 1257
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1258
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1259
    const/4 v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1260
    const/16 v5, 0x10

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1261
    if-eqz v1, :cond_6

    neg-int v4, v4

    .end local v4    # "value":I
    :cond_6
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .line 1267
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "value":I
    :cond_7
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1268
    if-eqz v1, :cond_8

    neg-int v4, v4

    .end local v4    # "value":I
    :cond_8
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_9
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1
.end method

.method public scanLong(C)J
    .locals 10
    .param p1, "expectNextChar"    # C

    .prologue
    .line 1274
    const/4 v6, 0x0

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1276
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1277
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1279
    .local v0, "chLocal":C
    const/16 v6, 0x2d

    if-ne v0, v6, :cond_0

    const/4 v1, 0x1

    .line 1280
    .local v1, "negative":Z
    :goto_0
    if-eqz v1, :cond_8

    .line 1281
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1285
    :goto_1
    const/16 v6, 0x30

    if-lt v0, v6, :cond_3

    const/16 v6, 0x39

    if-gt v0, v6, :cond_3

    .line 1286
    add-int/lit8 v6, v0, -0x30

    int-to-long v4, v6

    .line 1288
    .local v4, "value":J
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1289
    const/16 v6, 0x30

    if-lt v0, v6, :cond_1

    const/16 v6, 0x39

    if-gt v0, v6, :cond_1

    .line 1290
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    add-int/lit8 v8, v0, -0x30

    int-to-long v8, v8

    add-long v4, v6, v8

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 1279
    .end local v1    # "negative":Z
    .end local v2    # "offset":I
    .end local v4    # "value":J
    .restart local v3    # "offset":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1291
    .restart local v1    # "negative":Z
    .restart local v4    # "value":J
    :cond_1
    const/16 v6, 0x2e

    if-ne v0, v6, :cond_2

    .line 1292
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1293
    const-wide/16 v4, 0x0

    move v2, v3

    .line 1321
    .end local v3    # "offset":I
    .end local v4    # "value":J
    .restart local v2    # "offset":I
    :goto_3
    return-wide v4

    .line 1298
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "value":J
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_5

    .line 1299
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1300
    const-wide/16 v4, 0x0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .line 1303
    .end local v4    # "value":J
    :cond_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1304
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 1315
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "value":J
    :cond_4
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1316
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1308
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_5
    if-ne v0, p1, :cond_4

    .line 1309
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1310
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1311
    const/4 v6, 0x3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1312
    const/16 v6, 0x10

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1313
    if-eqz v1, :cond_6

    neg-long v4, v4

    .end local v4    # "value":J
    :cond_6
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .line 1320
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "value":J
    :cond_7
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v2, v3

    .line 1321
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .end local v2    # "offset":I
    .end local v4    # "value":J
    .restart local v3    # "offset":I
    :cond_8
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1
.end method

.method protected setTime(CCCCCC)V
    .locals 5
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .prologue
    .line 531
    add-int/lit8 v3, p1, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p2, -0x30

    add-int v0, v3, v4

    .line 532
    .local v0, "hour":I
    add-int/lit8 v3, p3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p4, -0x30

    add-int v1, v3, v4

    .line 533
    .local v1, "minute":I
    add-int/lit8 v3, p5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p6, -0x30

    add-int v2, v3, v4

    .line 534
    .local v2, "seconds":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 535
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 536
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 537
    return-void
.end method

.method protected setTimeZone(CCC)V
    .locals 5
    .param p1, "timeZoneFlag"    # C
    .param p2, "t0"    # C
    .param p3, "t1"    # C

    .prologue
    .line 540
    add-int/lit8 v3, p2, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p3, -0x30

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0xe10

    mul-int/lit16 v2, v3, 0x3e8

    .line 541
    .local v2, "timeZoneOffset":I
    const/16 v3, 0x2d

    if-ne p1, v3, :cond_0

    .line 542
    neg-int v2, v2

    .line 545
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 546
    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "timeZoneIDs":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_1

    .line 548
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 549
    .local v0, "timeZone":Ljava/util/TimeZone;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 552
    .end local v0    # "timeZone":Ljava/util/TimeZone;
    .end local v1    # "timeZoneIDs":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_0

    .line 124
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 131
    sget-boolean v1, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 134
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {v1, v2, v4, p2}, Ljava/lang/String;-><init>([CII)V

    .line 141
    :goto_0
    return-object v1

    .line 136
    :cond_0
    new-array v0, p2, [C

    .line 137
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 138
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 141
    .end local v0    # "chars":[C
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final sub_chars(II)[C
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 146
    sget-boolean v1, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    .line 152
    :goto_0
    return-object v0

    .line 150
    :cond_0
    new-array v0, p2, [C

    .line 151
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method
